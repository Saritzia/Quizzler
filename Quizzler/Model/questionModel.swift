//
//  questionModel.swift
//  Quizzler
//
//  Created by Sara Lopez Martinez on 21/3/23.
//
import Foundation

struct QuestionModel {
    var question : String
    var correctAnswer : String
    var options : Array<String>
    
    init(question: String, correctAnswer: String, options: Array<String>) {
        self.question = question
        self.correctAnswer = correctAnswer
        self.options = options
    }
}
