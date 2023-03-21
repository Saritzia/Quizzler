//
//  QuizzViewController.swift
//  Quizzler
//
//  Created by Sara Lopez Martinez on 21/3/23.
//

import UIKit

class QuizzViewController : UIViewController {
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var aButton: UIButton!
    @IBOutlet weak var bButton: UIButton!
    @IBOutlet weak var cButton: UIButton!
    
    var quiz = Quizzler()
    var check : Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //View properties
        view.backgroundColor = K.greenColor
        scoreLabel.textColor = K.letterColor
        questionLabel.textColor = K.letterColor
        aButton.titleLabel?.textColor = K.letterColor
        progressBar.backgroundColor = K.vanillaColor
        progressBar.progressTintColor = K.redColor
        
        updateUI()
    }
    
    @objc func updateUI(){
        //Get the text of the question
        questionLabel.text = quiz.getQuestionText()
        
        //Get the options
        let allOptions = quiz.getQuestionOptions()
        
        aButton.setTitle(allOptions[0], for: .normal)
        bButton.setTitle(allOptions[1], for: .normal)
        cButton.setTitle(allOptions[2], for: .normal)
        
        //Update barProgress
        progressBar.progress = quiz.getProgress()
        
        //Change background color
        aButton.backgroundColor = UIColor.clear
        bButton.backgroundColor = UIColor.clear
        cButton.backgroundColor = UIColor.clear
        
        //Score label update
        scoreLabel.text = "Score = \(quiz.scoreProgress())"
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        let userAnswer = sender.titleLabel?.text
        check = quiz.checkAnswer(userAnswer: userAnswer!)
        
        if check == true {
            sender.backgroundColor = .green
        }else{
            sender.backgroundColor = .red
        }
        
        quiz.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.3, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
}
