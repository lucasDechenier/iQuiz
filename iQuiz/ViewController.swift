//
//  ViewController.swift
//  iQuiz
//
//  Created by Lucas Dechenier on 03/11/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var startButton: UIButton!
    
    @IBAction func startPressed(_ sender: Any) {
        print("Botão pressionado")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureLayout()
    }
    
    func configureLayout(){
        startButton.layer.cornerRadius = 12.0
    }


}

