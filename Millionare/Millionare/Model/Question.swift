//
//  Question.swift
//  Millionare
//
//  Created by Ованес Захарян on 23.03.2022.
//

import UIKit









struct Question {
    var question: String
    var firstAnswer: String
    var secondAnswer: String
    var thirdAnswer: String
    var fourthAnswer: String
    var correctAnswer: String
    
    
    func isAnserRight(userAnswer: String) -> Bool {
        return userAnswer == correctAnswer
    }
}



enum TestQuestionEnum {
    case first
    case second
    case third
    
    var questions: Question {
        switch self {
        case .first:
            return Question(question: "Столица Росси?", firstAnswer: "Москва", secondAnswer: "Санкт-Петербург", thirdAnswer: "Волгоград", fourthAnswer: "Калининград", correctAnswer: "Москва")
        case .second:
            return Question(question: "Какой автомобиль разработан в России?", firstAnswer: "Мерседес", secondAnswer: "Ауди", thirdAnswer: "Ниссан", fourthAnswer: "Лада", correctAnswer: "Лада")
        case .third:
            return Question(question: "Национальная валюта Китая?", firstAnswer: "Доллар", secondAnswer: "Евро", thirdAnswer: "Юань", fourthAnswer: "Рубль", correctAnswer: "Юань")
        }
    }
}




