//
//  ResultBrain.swift
//  NBA Quiz
//
//  Created by Hector Carmona on 7/15/22.
//

import Foundation

struct ResultBrain {
    
    var correctAnswers: Int = 0
    var totalOfQuestions: Int = 0
    
    var resultMessage: String {
        switch correctAnswers {
        case 0...totalOfQuestions/3:
            return K.workHarder
        case totalOfQuestions/3...2*totalOfQuestions/3:
            return K.notBad
        case 2*totalOfQuestions/3..<totalOfQuestions:
            return K.goodJob
        case totalOfQuestions:
            return K.perfect
        default:
            return ""
        }
    }
    
    var typeConffeti: String {
        switch correctAnswers {
        case 0...totalOfQuestions/3:
            return K.sadFace
        case totalOfQuestions/3...2*totalOfQuestions/3:
            return K.basketBall
        case 2*totalOfQuestions/3..<totalOfQuestions:
            return ""
        case totalOfQuestions:
            return ""
        default:
            return ""
        }
    }
    
}
