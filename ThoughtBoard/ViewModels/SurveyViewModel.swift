//
//  SurveyViewModel.swift
//  ThoughtBoard
//
//  Created by Alexander Gould on 1/3/24.
//

import Foundation



class SurveyViewModel: ObservableObject {
    @Published var questions:[SurveyQuestion]
    
    static var actions = ["smoke", "drink", "eat", "sleep", "get high", "have sex", "run","work", "be present","love", "shout", "cry", "meditate", "stop breathing", "panic"]
    
    static func getCheckableItems()->[CheckableItem]{
        var checkableItems = [CheckableItem]()
        
        for action in actions{
            checkableItems.append(CheckableItem(title: action, isChecked: false))
        }
        return checkableItems
    }
    
    init() {
        questions = [SurveyQuestion(question: "I am having a", answer:"", options:["Positive Thought", "Negative Thought"], checkableItems: []),
                     SurveyQuestion(question: "About", answer:"", options:[], checkableItems: []),
                     SurveyQuestion(question: "This thought makes me want to", answer:"", options:[], checkableItems:SurveyViewModel.getCheckableItems()),
                     SurveyQuestion(question: "Because of this thought I", answer:"", options:["Am","Am not"], checkableItems: []),
                     SurveyQuestion(question: "Going to:", answer:"", options:[], checkableItems:[])
        ]
        
    }
    
   
    
    
    func submitAnswers() {
        // Logic to handle submission of answers
        // Maybe send data to a server or store it locally
    }
}
