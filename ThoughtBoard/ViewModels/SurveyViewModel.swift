//
//  SurveyViewModel.swift
//  ThoughtBoard
//
//  Created by Alexander Gould on 1/3/24.
//

import Foundation

class SurveyViewModel: ObservableObject {
    @Published var questions: [SurveyQuestion] = [
        SurveyQuestion(question: "How are you feeling today?"),
        // Add more questions as needed
    ]
    
    func submitAnswers() {
        // Logic to handle submission of answers
        // Maybe send data to a server or store it locally
    }
}
