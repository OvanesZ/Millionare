//
//  GameViewController.swift
//  Millionare
//
//  Created by Ованес Захарян on 23.03.2022.
//

import UIKit

class GameViewController: ViewController {
    
    
    private var questions = [Question(question: "Столица России?", answer: ["Москва", "Санкт-Петербург", "Казань", "Екатеринбург"], trueAnswer: "Москва"),
                                 Question(question: "Какой химический элемент назван в честь злого подземного гнома", answer: ["Гафний", "Кобальт", "Бериллий", "Теллур"], trueAnswer: "Кобальт"),
                                 Question(question: "Где у кузнечика уши?", answer: ["На спине", "На хвосте", "На ногах", "Их нет"], trueAnswer: "На ногах"),
                                 Question(question: "Какое дерево дольше живет?", answer: ["Сосна", "Осина", "Дуб", "Ель"], trueAnswer: "Дуб"),
                                 Question(question: "Как звали убийцу А.С. Пушкина?", answer: ["Жульен", "дядя Степа", "Мартынов", "Дантес"], trueAnswer: "Дантес")]
    
}
