//
//  ViewController.swift
//  SwiftUIToUIKit
//
//  Created by Mayank Negi on 30/04/24.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBSegueAction func goToSwiftUIScreen(_ coder: NSCoder) -> UIViewController? {
        let rootView = Greetings(textFromUIKit: "Hello, SwiftUI")
        return UIHostingController(coder: coder, rootView: rootView)
    }
    
}

