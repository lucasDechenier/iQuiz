//
//  QuestionViewController.swift
//  iQuiz
//
//  Created by Lucas Dechenier on 03/11/23.
//

import UIKit

class QuestionViewController: UIViewController {
    var score = 0
    var questionNumber = 0
    
    @IBOutlet weak var titleQuestionLabel: UILabel!
    @IBOutlet var responseButtons: [UIButton]!
    
    @IBAction func reponsePressed(_ sender: UIButton) {
        let isRightAnswer = questions[questionNumber].correctResponse == sender.tag
        if (isRightAnswer){
            score += 1
            sender.backgroundColor = UIColor.sucess
        } else {
            sender.backgroundColor = UIColor.error
        }
        
        if (questionNumber + 1) < questions.count {
            questionNumber += 1
            Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(configureQuestion), userInfo: nil, repeats: false)
        }else {
            goToScore()
        }
    }
    
    func goToScore(){
        performSegue(withIdentifier: "goToScore", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureLayout()
        configureQuestion()
    }
    
    func configureLayout(){
        navigationItem.hidesBackButton = true
        titleQuestionLabel.numberOfLines = 0
        titleQuestionLabel.textAlignment = .center
        for button in responseButtons {
            button.layer.cornerRadius = 12.0
        }
    }
    
    @objc func configureQuestion(){
        titleQuestionLabel.text = questions[questionNumber].title
        for button in responseButtons {
            let buttonTitle = questions[questionNumber].responses[button.tag]
            button.setTitle(buttonTitle, for: .normal)
            button.backgroundColor = UIColor(red: 0.45, green: 0.20, blue: 1.00, alpha: 1.00)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let performanceVC = segue.destination as? PerformanceViewController else { return }
        
        performanceVC.score = score
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
