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
            
            ForEach(0..<viewModel.questions.count, id:\.self){index in
                let question = viewModel.questions[index]
                VStack(alignment:.center){
                    
                    Text(viewModel.questions[index].question)
                        .font(.headline)
                        .fontWeight(.heavy)
                    
                    if question.options.isEmpty{
                        TextField(viewModel.questions[index].question, text:$viewModel.questions[index].answer)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .multilineTextAlignment(.center)
                            .padding()
                    }else{
                        Picker(question.question, selection: $viewModel.questions[index].answer){
                            ForEach(question.options, id:\.self){option in
                                Text(option).tag(option)
                            }
                        }
                        .pickerStyle(InlinePickerStyle())
                    }
                }
                
                
            }
            Button("Submit") {
                // Handle the submission of the survey
            }
            .padding()
            
        }
        .transition(.slide)
        .animation(.easeInOut, value: true)
        
    }
    
}

