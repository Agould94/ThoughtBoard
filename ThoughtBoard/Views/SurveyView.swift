//
//  SurveyView.swift
//  ThoughtBoard
//
//  Created by Alexander Gould on 1/2/24.
//

import Foundation
import SwiftUI

struct SurveyView: View {
    @State private var answerOne: String = ""
    @State private var answerTwo: String = ""
    @StateObject var viewModel = SurveyViewModel()

    var body: some View {
        VStack {
            Text("I am Having A")
            TextField("Question One", text: $answerOne)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Text("About")
            TextField("Question Two", text: $answerTwo)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Button("Submit") {
                // Handle the submission of the survey
            }
            .padding()
        }
        .transition(.slide)
        .animation(.easeInOut, value: true)
    }
}



