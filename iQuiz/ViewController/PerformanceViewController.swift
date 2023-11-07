//
//  PerformanceViewController.swift
//  iQuiz
//
//  Created by Lucas Dechenier on 06/11/23.
//

import UIKit

class PerformanceViewController:
    UIViewController {
    var score: Int?
    
    @IBOutlet weak var percentageLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBAction func restartPressed(_ sender: UIButton) {
        
    }
    
    @IBOutlet weak var restartButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureLayout()
        configureScore()
    }
    
    func configureLayout(){
        navigationItem.hidesBackButton = true
        restartButton.layer.cornerRadius = 12.0
    }
    
    func configureScore(){
        guard let score = score else { return }
        
        scoreLabel.text = "Você acertou \(score) de \(questions.count) questões."
        
        let percentual = round(Double(score)*100/Double(questions.count))
        percentageLabel.text = "Percentual final:  \(percentual)%"
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
