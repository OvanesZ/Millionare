//
//  TestViewController.swift
//  Millionare
//
//  Created by Ованес Захарян on 27.03.2022.
//

import UIKit

class TestViewController: UIViewController {
    
    let game = Game.shared
    var delegate: LastGameResultProtocol?

    
    
    var oneAnswerButton = UIButton()
    var twoAnswerButton = UIButton()
    var threeAnswerButton = UIButton()
    var fourAnswerButton = UIButton()
    var questionLabel = UILabel()
    
    private var gameSession: GameSession? = GameSession()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
        
        addButtons()
        configureActualQuestion()

    }
    
    
    func addButtons() {
        
        
        questionLabel = UILabel(frame: CGRect(x: 25, y: 100, width: 350, height: 50))
        questionLabel.text = "Вопрос"
        self.view.addSubview(questionLabel)
        
        
    oneAnswerButton = UIButton(frame: CGRect(x: 25, y: 250, width: 275, height: 50))
    oneAnswerButton.setTitle("ответ 1", for: .normal)
    oneAnswerButton.backgroundColor = .gray
        oneAnswerButton.tag = 1
    oneAnswerButton.addTarget(self, action: #selector(pressButton(_:)), for: .touchUpInside)
    self.view.addSubview(oneAnswerButton)
    
    twoAnswerButton = UIButton(frame: CGRect(x: 25, y: 305, width: 275, height: 50))
    twoAnswerButton.setTitle("ответ 2", for: .normal)
    twoAnswerButton.backgroundColor = .gray
//    answerTwoButton.setTitle(q.answerTwo, for: .normal)
        twoAnswerButton.tag = 2
    twoAnswerButton.addTarget(self, action: #selector(pressButton(_:)), for: .touchUpInside)
    self.view.addSubview(twoAnswerButton)
    
    threeAnswerButton = UIButton(frame: CGRect(x: 25, y: 360, width: 275, height: 50))
    threeAnswerButton.setTitle("ответ 3", for: .normal)
    threeAnswerButton.backgroundColor = .gray
 //   answerThreeButton.setTitle(q.answerThree, for: .normal)
        threeAnswerButton.tag = 3
    threeAnswerButton.addTarget(self, action: #selector(pressButton(_:)), for: .touchUpInside)
    self.view.addSubview(threeAnswerButton)
    
    fourAnswerButton = UIButton(frame: CGRect(x: 25, y: 415, width: 275, height: 50))
    fourAnswerButton.setTitle("ответ 4", for: .normal)
    fourAnswerButton.backgroundColor = .gray
 //   answerFourButton.setTitle(q.answerFour, for: .normal)
        fourAnswerButton.tag = 4
    fourAnswerButton.addTarget(self, action: #selector(pressButton(_:)), for: .touchUpInside)
    self.view.addSubview(fourAnswerButton)
}
    
    
    //MARK: - Action
    
    
    @objc func pressButton(_ sender: UIButton) {
        switch sender.tag {
        case 1:
            isAnswerRigth(button: oneAnswerButton)
        case 2:
            isAnswerRigth(button: twoAnswerButton)
        case 3:
            isAnswerRigth(button: threeAnswerButton)
        case 4:
            isAnswerRigth(button: fourAnswerButton)
        default:
            return
        }
    }
    
    
    
    
    
    
    private func configureActualQuestion() {
        guard let score = gameSession?.score else { return }
        
        switch score {
        case 0:
            gameSession?.question = TestQuestionEnum.first.questions
        case 10:
            gameSession?.question = TestQuestionEnum.second.questions
        case 20:
            gameSession?.question = TestQuestionEnum.third.questions
        default:
            break
        }
        configureGame()
    }
 
    
    
    private func configureGame() {
        guard let gameSession = gameSession, let question = gameSession.question else { return }
        
        questionLabel.text = question.question
        oneAnswerButton.setTitle(question.firstAnswer, for: .normal)
        oneAnswerButton.backgroundColor = .lightGray
        twoAnswerButton.setTitle(question.secondAnswer, for: .normal)
        twoAnswerButton.backgroundColor = .lightGray
        threeAnswerButton.setTitle(question.thirdAnswer, for: .normal)
        threeAnswerButton.backgroundColor = .lightGray
        fourAnswerButton.setTitle(question.fourthAnswer, for: .normal)
        fourAnswerButton.backgroundColor = .lightGray
    }
    
    
    
    private func isAnswerRigth(button: UIButton) {
        if let answer = button.titleLabel?.text, let question = gameSession?.question {
            if question.isAnserRight(userAnswer: answer) {
                gameSession?.score += 10
                configureActualQuestion()
            } else {
                dismiss(animated: true, completion: {
                    self.game.addRecord(record: Record(score: self.gameSession?.score, name: self.gameSession?.name))
                    self.delegate?.returnLastGameResult(gameSession: self.gameSession)
                    self.gameSession = nil
                })
            }
        }
    }
    
    
    
    
  
//    @objc func pressButton(_ sender: UIButton) {
//        switch sender.tag {
//        case 1:
//            oneAnswerButton.backgroundColor = .green
//
//        case 2:
//            twoAnswerButton.backgroundColor = .red
//        case 3:
//            threeAnswerButton.backgroundColor = .red
//        case 4:
//            fourAnswerButton.backgroundColor = .red
//        default:
//            oneAnswerButton.backgroundColor = .gray
//            twoAnswerButton.backgroundColor = .gray
//            threeAnswerButton.backgroundColor = .gray
//            fourAnswerButton.backgroundColor = .gray
//        }
//    }
    
  
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}


protocol LastGameResultProtocol {
    func returnLastGameResult(gameSession: GameSession?)
}
