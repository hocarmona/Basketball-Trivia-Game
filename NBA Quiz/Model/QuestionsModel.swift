//
//  Model.swift
//  NBA Quiz
//
//  Created by Hector Carmona on 7/3/22.
//

import Foundation

struct QuestionsModel {
    
    let question: String
    let options: [String]
    let answer: String
    
    init(q: String, o: [String], a: String) {
        question = q
        options = o
        answer = a
    }
    
}
