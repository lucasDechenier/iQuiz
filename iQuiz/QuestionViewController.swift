//
//  QuestionViewController.swift
//  iQuiz
//
//  Created by Lucas Dechenier on 03/11/23.
//

import UIKit

class QuestionViewController: UIViewController {
    @IBOutlet weak var titleQuestionLabel: UILabel!
    @IBOutlet var responseButtons: [UIButton]!
    
    @IBAction func reponsePressed(_ sender: UIButton) {
        print(sender.tag)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureLayout()
    }
    
    func configureLayout(){
        navigationItem.hidesBackButton = true
        for button in responseButtons {
            button.layer.cornerRadius = 12.0
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
