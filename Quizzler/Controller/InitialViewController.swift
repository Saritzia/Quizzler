//
//  ViewController.swift
//  Quizzler
//
//  Created by Sara Lopez Martinez on 21/3/23.
//

import UIKit

class InitialViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var initialImage: UIImageView!
    @IBOutlet weak var startB: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Colour properties
        view.backgroundColor = K.greenColor
        titleLabel.textColor = K.letterColor
        startB.configuration?.cornerStyle = .capsule
        startB.configuration?.background.backgroundColor = K.redColor
    }

    @IBAction func startButton(_ sender: UIButton) {
        performSegue(withIdentifier: K.startSegue, sender: self)
    }
}

