//
//  DrainQues.swift
//  FakeDrain
//
//  Created by Jaylen Figueroa on 9/14/20.
//  Copyright © 2020 Jaylen Figueroa. All rights reserved.
//




 // This structure holds the questions, answer points for the quiz
import UIKit


struct DrainQues {
    let question : String
    let optionone : String
    let optiontwo : String
    let optionthree : String
    let optiononepoints : Int
    let optiontwopoints: Int
    let optionthreepoints : Int
    
    
    
    init (title: String, choice1: String, choice2: String, choice3: String, onepoints: Int, twopoints: Int, threepoints: Int) {
        question = title
        optionone = choice1
        optiontwo = choice2
        optionthree = choice3
        optiononepoints = onepoints
        optiontwopoints = twopoints
        optionthreepoints = threepoints
       
        return 
        
    }
    
}
