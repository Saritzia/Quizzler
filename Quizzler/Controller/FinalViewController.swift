//
//  FinalViewController.swift
//  Quizzler
//
//  Created by Sara Lopez Martinez on 21/3/23.
//

import UIKit

class FinalViewController : UIViewController {
    
    
    @IBOutlet weak var finalScoreLabel: UILabel!
    @IBOutlet weak var emojiImage: UIImageView!
    
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var retryButton: UIButton!
    
    var quizzResult : Quizzler?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Item properties
        view.backgroundColor = K.redColor
        finalScoreLabel.textColor = K.letterColor
        messageLabel.textColor = K.letterColor
        //retryButton.configuration?.background.backgroundColor = K.vanillaColor
        //retryButton.configuration?.cornerStyle = .capsule
        //retryButton.titleLabel?.tintColor = K.letterColor
    
        updateController()
    }
    
    func getMessageText(score : Int) -> String {
        var text : String = ""
        switch score {
        case 20 : text = K.optionPerfectScore; break
        case 12...19 : text = K.optionPerfectScore; break
        case 10...11 : text = K.optionPerfectScore; break
        case 0..<10 : text = K.optionPerfectScore; break
        default: text = K.optionError
        }
        return text
    }
    
    func getImage(score : Int) -> UIImage? {
        var image : UIImage?
        switch score {
        case 20 : image = UIImage(named: "veryHappy"); break
        case 12...19 : image = UIImage(named: "happy"); break
        case 10...11 : image = UIImage(named: "happy"); break
        case 0..<10 : image = UIImage(named: "sad") ; break
        default: image = UIImage(named: "sad")
            }
        return image
    }
    
    func updateController(){
        let score = quizzResult?.score ?? -1
        print(score)
        
        finalScoreLabel.text = "Puntuación total \(String(describing: score))"
        
        messageLabel.text = getMessageText(score: score)
     
        emojiImage.image = getImage(score: score)
    }  
  
    @IBAction func retryButton(_ sender: UIButton) {
    navigationController?.popToRootViewController(animated: true)
        print("retry")
    }
}
