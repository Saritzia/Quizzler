//
//  K.swift
//  Quizzler
//
//  Created by Sara Lopez Martinez on 21/3/23.
//

import UIKit

struct K {
    
    //Colour palette
    static let letterColor = UIColor(red: 0.30, green: 0.30, blue: 0.30, alpha: 1.00)
    static let greenColor = UIColor(red: 0.41, green: 0.51, blue: 0.41, alpha: 1.00)
    static let redColor = UIColor(red: 0.67, green: 0.34, blue: 0.34, alpha: 1.00)
    static let vanillaColor = UIColor(red: 0.95, green: 0.86, blue: 0.75, alpha: 1.00)
    
    //Identifiers
    static let startSegue = "initialToQuestion"
    static let finalSegue = "quizzToFinal"
    static let retrySegue = "finalToStart"
    static let initialImage = "humanBody"
    
    //Score options
    static let optionPerfectScore = "Eres una máquina"
    static let optionGoodJob = "Buen trabajo, no ha estado nada mal"
    static let optionRegular = "Aprobado por los pelos"
    static let optionFail = "A seguir intentándolo"
    static let optionError = "Error al cargar la puntuación"
}
