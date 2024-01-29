//
//  SurveyQuestion.swift
//  ThoughtBoard
//
//  Created by Alexander Gould on 1/3/24.
//

import Foundation

struct SurveyQuestion{
    var question: String
    var answer: String
    var options: [String]
    var checkableItems:[CheckableItem]
}

struct CheckableItem:Identifiable{
    var id = UUID()
    var title: String
    var isChecked:Bool
}
