//
//  ScannerVC.swift
//  BarcodeScanner
//
//  Created by Mayank Negi on 19/05/24.
//

import UIKit
import AVFoundation

enum CameraError: String {
    case invalidDeviceInput = "We are unable to capture the value"
    case invalidScannedValues = "The value scanned is not valid"
}

protocol ScannerVCDelegate: AnyObject {
    func didFind(_ barcode: String)
    func didSurface(_ error: CameraError)
}

final class ScannerVC: UIViewController {

    let captureSession = AVCaptureSession()
    var previewLayer: AVCaptureVideoPreviewLayer?

    weak var delegate: ScannerVCDelegate?

    init(previewLayre: AVCaptureVideoPreviewLayer? = nil, delegate: ScannerVCDelegate? = nil) {
        super.init(nibName: nil, bundle: nil)
        self.previewLayer = previewLayre
        self.delegate = delegate
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupCaptureSession()
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

        guard let previewLayer = previewLayer else {
            return
        }

        previewLayer.frame = view.layer.bounds
    }

    private func setupCaptureSession() {
        guard let videoCaptureDevice = AVCaptureDevice.default(for: .video) else {
            delegate?.didSurface(.invalidDeviceInput)
            return
        }

        var videoInput: AVCaptureDeviceInput

        do {
            try videoInput = AVCaptureDeviceInput(device: videoCaptureDevice)
        } catch {
            delegate?.didSurface(.invalidDeviceInput)
            return
        }

        if captureSession.canAddInput(videoInput) {
            captureSession.addInput(videoInput)
        } else {
            delegate?.didSurface(.invalidDeviceInput)
            return
        }

        let metaDataOutput = AVCaptureMetadataOutput()

        if captureSession.canAddOutput(metaDataOutput) {
            captureSession.addOutput(metaDataOutput)
            metaDataOutput.setMetadataObjectsDelegate(self, queue: .main)
            metaDataOutput.metadataObjectTypes = [.ean8, .ean13]
        } else {
            delegate?.didSurface(.invalidDeviceInput)
            return
        }

        previewLayer = AVCaptureVideoPreviewLayer(session: captureSession)
        previewLayer!.videoGravity = .resizeAspectFill
        view.layer.addSublayer(previewLayer!)

        captureSession.startRunning()
    }
}

extension ScannerVC: AVCaptureMetadataOutputObjectsDelegate {

    func metadataOutput(_ output: AVCaptureMetadataOutput, didOutput metadataObjects: [AVMetadataObject], from connection: AVCaptureConnection) {
        guard let object = metadataObjects.first else {
            delegate?.didSurface(.invalidScannedValues)
            return
        }

        guard let machineReadableObject = object as? AVMetadataMachineReadableCodeObject else {
            delegate?.didSurface(.invalidScannedValues)
            return
        }

        guard let barcode = machineReadableObject.stringValue else {
            delegate?.didSurface(.invalidScannedValues)
            return
        }

        captureSession.stopRunning()
        delegate?.didFind(barcode)
    }
}
