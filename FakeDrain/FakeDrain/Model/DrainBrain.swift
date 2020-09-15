//
//  DrainBrain.swift
//  FakeDrain!
//
//  Created by Jaylen Figueroa on 7/26/20.
//  Copyright © 2020 Jaylen Figueroa. All rights reserved.
//

import UIKit
 // the main decider and logic behind the progression of the quiz
struct DrainBrain {
    // user's score
    var userscore: Int = 0
    // used to increment questions array
    var counter: Int = 0
    
    // the set of questions stored
    let questions = [
        DrainQues(title: "Pick the best Bladee song?", choice1: "Be Nice 2 Me ", choice2: "Decay", choice3: "Apple", onepoints: -30, twopoints: 10, threepoints: 20) ,   DrainQues(title: "Pick the best Ecco song", choice1: "Peroxide", choice2: "GT-R", choice3: "AAA Powerline", onepoints: 5, twopoints: 10, threepoints: 15) ,   DrainQues(title: "Pick the best Thaiboy Song", choice1: "Legendary Member", choice2: "Diamonds", choice3: "Nervous", onepoints: 25, twopoints: 30, threepoints: 10), DrainQues(title: "What is Bladee's real name?", choice1: "Benjamin", choice2: "Fuit Gummy", choice3: "Bladee", onepoints: 5, twopoints: 20, threepoints: 30)  , DrainQues(title: "Ecco Pulled Up In?", choice1: "A Rover", choice2: "Gucci", choice3: "Fendi", onepoints: 30, twopoints: -40, threepoints: 10) ,
          DrainQues (title: "Has Bladee ever been to Gotham City?", choice1: "Yes", choice2: "No", choice3: "What is a Gotham City?", onepoints: 20, twopoints: 20, threepoints: 20) , DrainQues(title: "Thaiboy = DJ BillyBool?", choice1: "Yes", choice2: "No", choice3: "Who is DJ BillyBool?", onepoints: 10, twopoints: 30, threepoints: -10)]
    
    // updates counter to get the next question
    mutating func getNext () -> Bool
    {
        print("getting next")
        
        if(counter < questions.count-1)
        {
        counter += 1
            return true
        }
        
        
        else if(counter >= questions.count-1){
            return false
        }
        
        return false
        
        
    }
    
    
    // get question text from question set
    func getQues () -> String {
        
            return questions[counter].question
            
       
    }
    
    // returns first option from question set
    func getOption1 () -> String {
        
        
        return questions[counter].optionone
    }
    
    // returns second option from question set
    func getOption2 () -> String {
        return questions[counter].optiontwo
        
    }
    
    
    // returns third option from question set
    
    func getOption3 () -> String {
        return questions[counter].optionthree
    }
    
    // add points to user score
   mutating func addPoints(option: String)  {
    
    let choicefirst = questions[counter].optionone
    let choicesecond = questions[counter].optiontwo
    let choicethird = questions[counter].optionthree
        
    // user picks option one
        if(option == choicefirst)
        {
            userscore += questions[counter].optiononepoints
            return
        }
    
    //user picks option two
    else if(option == choicesecond)
    {
        userscore += questions[counter].optiontwopoints
        return
    }
    
    // user pick options three
    else if(option == choicethird){
            userscore += questions[counter].optionthreepoints
            return
            
    }
        
    }
  
    
    
}
