//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionText: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var scoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    @IBAction func buttonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle
        let userGotItRight = gameBrain.checkAnswer(userAnswer!)
        
        gameBrain.nextQuestion()
        
        if userGotItRight {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        updateUI()
    }
    
    var gameBrain = GameBrain()
    
    func updateUI() {
        self.questionText.text = gameBrain.getQuestionText()
        DispatchQueue.main.asyncAfter(deadline: .now()+0.2){ [self] in
            trueButton.backgroundColor = UIColor.clear
            falseButton.backgroundColor = UIColor.clear
            progressBar.progress = gameBrain.getProgress()
            scoreLabel.text = "Score:\(gameBrain.getScore())"
        }
        
        
    }
    
}
