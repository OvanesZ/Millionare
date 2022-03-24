//
//  GameViewController.swift
//  Millionare
//
//  Created by Ованес Захарян on 24.03.2022.
//

import UIKit

class GameViewController: UIViewController {

    @IBOutlet var buttons: [UIButton]!
    
    var arr = ["1", "2", "3"]
    
    var questions = [Question(question: "Столица России?", answer: ["Москва", "Санкт-Петербург", "Казань", "Екатеринбург"], trueAnswer: "Москва"),
                                 Question(question: "Какой химический элемент назван в честь злого подземного гнома", answer: ["Гафний", "Кобальт", "Бериллий", "Теллур"], trueAnswer: "Кобальт"),
                                 Question(question: "Где у кузнечика уши?", answer: ["На спине", "На хвосте", "На ногах", "Их нет"], trueAnswer: "На ногах"),
                                 Question(question: "Какое дерево дольше живет?", answer: ["Сосна", "Осина", "Дуб", "Ель"], trueAnswer: "Дуб"),
                                 Question(question: "Как звали убийцу А.С. Пушкина?", answer: ["Жульен", "дядя Степа", "Мартынов", "Дантес"], trueAnswer: "Дантес")]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        func que(q: Question) {
            for button in buttons {
                button.backgroundColor = .red
                button.setTitle(q.answer[1] , for: .normal)
            }
        }
        
        que(q: questions.removeFirst())
       
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
