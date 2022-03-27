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
    
    var answerButtonOne = UIButton()
    var questionsLabel = UILabel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        questionsLabel = UILabel(frame: CGRect(x: 25, y: 170, width: 400, height: 50))
        questionsLabel.text = "LABEL"
        self.view.addSubview(questionsLabel)
        
        
        answerButtonOne = UIButton(frame: CGRect(x: 180, y: 25, width: 50, height: 50))
        answerButtonOne.setImage(UIImage(named: "unlike"), for: .normal)
        answerButtonOne.setImage(UIImage(named: "like"), for: .highlighted)
        answerButtonOne.addTarget(self, action: #selector(changeColor), for: .touchUpInside)
        answerButtonOne.backgroundColor = UIColor.white
        self.view.addSubview(answerButtonOne)
        
       
        
        func que(q: Question) {
            
            buttons[0].setTitle(q.answer[0], for: .normal)
            buttons[1].setTitle(q.answer[1], for: .normal)
            buttons[2].setTitle(q.answer[2], for: .normal)
            buttons[3].setTitle(q.answer[3], for: .normal)
            questionsLabel.text = q.question
            
            for button in buttons {
                
                button.backgroundColor = .blue
                button.setTitleColor(.black, for: .normal)
                button.addTarget(self, action: #selector(changeColor), for: .touchUpInside)
            }
        }
        
        
        que(q: questions.removeFirst())
        
       
    }
    
    
    @objc func changeColor() {
        
        
        self.buttons[0].backgroundColor = UIColor.yellow
        self.buttons[1].backgroundColor = UIColor.yellow
        self.buttons[2].backgroundColor = UIColor.yellow
        self.buttons[3].backgroundColor = UIColor.yellow

        
        print("CHANGE")
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
