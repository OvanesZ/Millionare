//
//  TestViewController.swift
//  Millionare
//
//  Created by Ованес Захарян on 27.03.2022.
//

import UIKit

class TestViewController: UIViewController {

    
    var questions = [Question(question: "Столица России?", answer: ["Москва", "Санкт-Петербург", "Казань", "Екатеринбург"], trueAnswer: "Москва"),
                                 Question(question: "Какой химический элемент назван в честь злого подземного гнома", answer: ["Гафний", "Кобальт", "Бериллий", "Теллур"], trueAnswer: "Кобальт"),
                                 Question(question: "Где у кузнечика уши?", answer: ["На спине", "На хвосте", "На ногах", "Их нет"], trueAnswer: "На ногах"),
                                 Question(question: "Какое дерево дольше живет?", answer: ["Сосна", "Осина", "Дуб", "Ель"], trueAnswer: "Дуб"),
                                 Question(question: "Как звали убийцу А.С. Пушкина?", answer: ["Жульен", "дядя Степа", "Мартынов", "Дантес"], trueAnswer: "Дантес")]
    
    
    
    var answerOneButton = UIButton()
    var answerTwoButton = UIButton()
    var answerThreeButton = UIButton()
    var answerFourButton = UIButton()
    var questionLabel = UILabel()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        func addButtons(q: Question) {
            
            
            questionLabel = UILabel(frame: CGRect(x: 25, y: 100, width: 350, height: 50))
            questionLabel.text = q.question
            self.view.addSubview(questionLabel)
            
            
        answerOneButton = UIButton(frame: CGRect(x: 25, y: 250, width: 275, height: 50))
        answerOneButton.setTitle("ответ 1", for: .normal)
        answerOneButton.backgroundColor = .gray
        answerOneButton.setTitle(q.answer[0], for: .normal)
            answerOneButton.tag = 1
        answerOneButton.addTarget(self, action: #selector(pressButton(_:)), for: .touchUpInside)
        self.view.addSubview(answerOneButton)
        
        answerTwoButton = UIButton(frame: CGRect(x: 25, y: 305, width: 275, height: 50))
        answerTwoButton.setTitle("ответ 2", for: .normal)
        answerTwoButton.backgroundColor = .gray
        answerTwoButton.setTitle(q.answer[1], for: .normal)
            answerTwoButton.tag = 2
        answerTwoButton.addTarget(self, action: #selector(pressButton(_:)), for: .touchUpInside)
        self.view.addSubview(answerTwoButton)
        
        answerThreeButton = UIButton(frame: CGRect(x: 25, y: 360, width: 275, height: 50))
        answerThreeButton.setTitle("ответ 3", for: .normal)
        answerThreeButton.backgroundColor = .gray
        answerThreeButton.setTitle(q.answer[2], for: .normal)
            answerThreeButton.tag = 3
        answerThreeButton.addTarget(self, action: #selector(pressButton(_:)), for: .touchUpInside)
        self.view.addSubview(answerThreeButton)
        
        answerFourButton = UIButton(frame: CGRect(x: 25, y: 415, width: 275, height: 50))
        answerFourButton.setTitle("ответ 4", for: .normal)
        answerFourButton.backgroundColor = .gray
        answerFourButton.setTitle(q.answer[3], for: .normal)
            answerFourButton.tag = 4
        answerFourButton.addTarget(self, action: #selector(pressButton(_:)), for: .touchUpInside)
        self.view.addSubview(answerFourButton)
            
            
        
    }
        
        addButtons(q: questions.removeFirst())
        
        
    }
    
    
    
    @objc func pressButton(_ sender: UIButton) {
        switch sender.tag {
        case 1:
            answerOneButton.backgroundColor = .green
        case 2:
            answerTwoButton.backgroundColor = .red
        case 3:
            answerThreeButton.backgroundColor = .red
        case 4:
            answerFourButton.backgroundColor = .red
        default:
            answerOneButton.backgroundColor = .gray
            answerTwoButton.backgroundColor = .gray
            answerThreeButton.backgroundColor = .gray
            answerFourButton.backgroundColor = .gray
        }
  
    }
    
    
    
    
    @objc func buttonOneAction() {
        sleep(2)
        if answerOneButton.currentTitle == "Москва" {
            answerOneButton.backgroundColor = .green
            print("yes")
        } else {
            answerOneButton.backgroundColor = .red
            print("no")
        }
    }
    
    @objc func buttonTwoAction() {
        if answerTwoButton.currentTitle == "Москва" {
            answerTwoButton.backgroundColor = .green
            print("yes")
        } else {
            answerTwoButton.backgroundColor = .red
            print("no")
        }
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
