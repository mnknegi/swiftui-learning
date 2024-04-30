//
//  ContentView.swift
//  Stacks
//
//  Created by Mayank Negi on 24/04/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("Mayank Negi")
                    .fontWeight(.bold)
                    .font(.largeTitle)
                    .foregroundStyle(Color.init(red: 16/255, green: 67/255, blue: 159/255))

                HStack {
                    Text("Technology Lead")
                        .fontWeight(.bold)
                        .font(.subheadline)
                        .foregroundStyle(Color.init(red: 16/255, green: 67/255, blue: 159/255))
                    Divider()
                        .overlay(.black)
                        .frame(height:20)
                    Text("Infosys")
                        .fontWeight(.bold)
                        .font(.subheadline)
                        .foregroundStyle(Color.init(red: 16/255, green: 67/255, blue: 159/255))
                }

                Divider().overlay(.black)

                HStack() {
                    Text("Summary:")
                        .font(.headline)
                        .fontWeight(.bold)
                    Spacer()
                }
                .padding([.top, .bottom])

                VStack() {
                    Text("Experienced iOS application developer with over eight years of experience of effectively managing Apple mobile applications from conception to completion. Delivered many high-quality, user-friendly iOS applications from ideation to deployment.")
                        .fontWeight(.regular)
                }


                Divider().overlay(.black)
                    .padding([.top, .bottom])

                HStack() {
                    Text("Experience:")
                        .font(.headline)
                        .fontWeight(.bold)
                    Spacer()
                }
                .padding([.bottom])

                VStack(spacing: 20) {
                    CompanyExperienceView(companyName: "ANZ (Australia New Zealand Banking Group)", workingYears: "5 Nov 2021 - Present")

                    CompanyExperienceView(companyName: "Infosys Limited", workingYears: "9 Sept 2021 - Present")

                    CompanyExperienceView(companyName: "IoTfy Solutions Private Limited", workingYears: "Oct 2020 - 31 Jul 2021")

                    CompanyExperienceView(companyName: "Nexogen Private Limited", workingYears: "1 Mar 2016 - Oct 2020")
                }

                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}

struct CompanyExperienceView: View {

    var companyName: String
    var workingYears: String

    var body: some View {
        VStack() {
            Text(companyName)
                .fontWeight(.regular)
            
            Divider()
                .overlay(.black)
                .frame(width: 20)
            
            Text(workingYears)
                .fontWeight(.regular)
        }
    }
}
