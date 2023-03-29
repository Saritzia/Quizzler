//
//  Quizzler.swift
//  Quizzler
//
//  Created by Sara Lopez Martinez on 21/3/23.
//

import Foundation

struct Quizzler {
    
    let questions = [
    QuestionModel(question: "¿Cuánto tarda un riñón en filtrar la sangre de todo el cuerpo?", correctAnswer: "5 minutos", options: ["7 minutos","12 minutos","5 minutos"]),
    QuestionModel(question: "¿Qué pulmón en más grande?", correctAnswer: "El derecho", options: ["El derecho","Tienen el mismo tamaño","El izquierdo"]),
    QuestionModel(question: "¿Con qué piedra se puede equiparar la fortaleza de los huesos?", correctAnswer: "El granito", options: ["El granito","El mármol","La pizarra"]),
    QuestionModel(question: "¿Con cuántos huesos nacemos?", correctAnswer: "300", options: ["295","300","206"]),
    QuestionModel(question: "¿Cuántos días puede vivir un espermatozoide?", correctAnswer: "Entre 3 y 5 días", options: ["Entre 6 y 7 días","Entre 2 y 3 días","Entre 3 y 5 días"]),
    QuestionModel(question: "¿Cuántos colores distingue el ojo humano?", correctAnswer: "10 millones", options: ["10 millones","2 millones","100.000"]),
    QuestionModel(question: "¿Cuál es el músculo más fuerte del cuerpo?", correctAnswer: "El glúteo mayor", options: ["El bíceps","El vasto lateral","El glúteo mayor"]),
    QuestionModel(question: "¿Qué porcentaje de ADN compartimos los seres humanos?", correctAnswer: "99%", options: ["98%","95%","99%"]),
    QuestionModel(question: "¿Cuál es el hueso más largo del cuerpo?", correctAnswer: "El fémur", options: ["El húmero","La tibia","El fémur"]),
    QuestionModel(question: "¿En qué parte del cuerpo hay más huesos?", correctAnswer: "En los pies", options: ["En los pies","En las manos","En la columna"]),
    QuestionModel(question: "¿Cuál de las siguientes opciones afecta al estado de ánimo y a la memoria?", correctAnswer: "La posición del cuerpo", options: ["El tiempo del día","La posición del cuerpo","La hora del día"]),
    QuestionModel(question: "¿Podemos tragar y respirar al mismo tiempo?", correctAnswer: "No", options: ["Sí","No","Solo fuera del agua"]),
    QuestionModel(question: "Marca la afirmación falsa", correctAnswer: "El olor corporal no es característico a nivel individual", options: ["Hay partes del organismo que se renuevan","Los seres humanos poseemos bioluminiscencia","El olor corporal no es característico a nivel individual"]),
    QuestionModel(question: "¿Qué parte del cuerpo es tan identificativa como las huellas dactilares?", correctAnswer: "La lengua", options: ["La lengua","Los ojos","Las uñas"]),
    QuestionModel(question: "¿Qué uñas crecen más rápido?", correctAnswer: "Las de la mano dominante", options: ["Crecen a la misma velocidad","Las de la mano no dominante","Las de la mano dominante"]),
    QuestionModel(question: "¿Qué dedo de la mano tiene más fuerza?", correctAnswer: "El meñique", options: ["El índice","El meñique","El pulgar"]),
    QuestionModel(question: "¿Qué órgano se regenera por sí solo por completo?", correctAnswer: "El hígado", options: ["La piel","El cerebro","El hígado"]),
    QuestionModel(question: "¿De qué color son los ojos al nacer?", correctAnswer: "Azules", options: ["Azules","Marrones","Depende de la genética"]),
    QuestionModel(question: "El ser humano es la única especie capaz de producir lágrimas", correctAnswer: "Sí", options: ["Sí","No","No todos los humanos pueden producir lágrimas"]),
    QuestionModel(question: "El estómago es capaz de disolver...", correctAnswer: "Una cuchilla de metal", options: ["Un trozo de granito","Una cuchilla de metal","Un diamante pequeño"])
    ]
    
    var questionNumber = 0
    var option = 0
    var score = 0
    
    mutating func checkAnswer (userAnswer : String) -> Bool  {
        if userAnswer == questions[questionNumber].correctAnswer{
            score+=1
            return true
        }else{
            return false
        }
    }
    
    func scoreProgress() -> Int {
        return score
    }
    
    mutating func nextQuestion(){
        if questionNumber + 1 <= questions.count {
            questionNumber+=1
        }
    }
    
    func getQuestionText() -> String {
        return questions[questionNumber].question
    }
    
    func getQuestionOptions() -> Array<String>{
        return questions[questionNumber].options
    }
    
    func getProgress() -> Float {
        return Float(questionNumber)/Float(questions.count)
    }
}
