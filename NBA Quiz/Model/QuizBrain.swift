//
//  QuizBrain.swift
//  NBA Quiz
//
//  Created by Hector Carmona on 7/4/22.
//

import Foundation

struct QuizBrain {
    
    var arrayIndexUsed: [Int] = []
    var currentQuestion: Int

        
    mutating func getRandomQuestion(counter: Int) {
        let arrayMaxIndex = K.questionsList.count - 1
        let newIndexNum = Int.random(in: 0...arrayMaxIndex)
        if arrayIndexUsed.contains(newIndexNum) {
            getRandomQuestion(counter: counter)
        } else {
            arrayIndexUsed.append(newIndexNum)
            currentQuestion = newIndexNum
            print(newIndexNum)
            print(arrayIndexUsed)
            if counter >= 10 {
                arrayIndexUsed = []
            }
        }
    }
        
    func getQuestion() -> String {
        return K.questionsList[currentQuestion].question
    }
    
    func getOption1() -> String {
        return K.questionsList[currentQuestion].options[0]
    }
    
    func getOption2() -> String {
        return K.questionsList[currentQuestion].options[1]
    }
    
    func getOption3() -> String {
        return K.questionsList[currentQuestion].options[2]
    }
    
    func getOption4() -> String {
        return K.questionsList[currentQuestion].options[3]
    }
    func getAnswer() -> String {
        return K.questionsList[currentQuestion].answer
    }
    
    func checkAnswer(answer: String) -> Bool {
        if answer == K.questionsList[currentQuestion].answer {
            return true
        } else {
            return false
        }
    }
}
