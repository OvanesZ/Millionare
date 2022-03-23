//
//  GameTableViewController.swift
//  Millionare
//
//  Created by Ованес Захарян on 23.03.2022.
//

import UIKit

class GameTableViewController: UITableViewController {

    
    private var questions = [Question(question: "Столица России?", answer: ["Москва", "Санкт-Петербург", "Казань", "Екатеринбург"], trueAnswer: "Москва"),
                                 Question(question: "Какой химический элемент назван в честь злого подземного гнома", answer: ["Гафний", "Кобальт", "Бериллий", "Теллур"], trueAnswer: "Кобальт"),
                                 Question(question: "Где у кузнечика уши?", answer: ["На спине", "На хвосте", "На ногах", "Их нет"], trueAnswer: "На ногах"),
                                 Question(question: "Какое дерево дольше живет?", answer: ["Сосна", "Осина", "Дуб", "Ель"], trueAnswer: "Дуб"),
                                 Question(question: "Как звали убийцу А.С. Пушкина?", answer: ["Жульен", "дядя Степа", "Мартынов", "Дантес"], trueAnswer: "Дантес")]
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
 
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 1
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath) as? QuestionTableViewCell,
              let question = try? questions[indexPath.item] else { return UITableViewCell() }
        
        
        cell.configure(with: question)

        return cell
    }
  

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
