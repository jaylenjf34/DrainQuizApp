//
//  ViewController.swift
//  FakeDrain
//
//  Created by Jaylen Figueroa on 9/14/20.
//  Copyright © 2020 Jaylen Figueroa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var buttonOneLabel: UIButton!
    @IBOutlet weak var buttonTwoLabel: UIButton!
    @IBOutlet weak var buttonThreeLabel: UIButton!
    
    
    
        var drainBrain = DrainBrain()
        
 
    @IBAction func buttonPressed(_ sender: UIButton) {
        drainBrain.addPoints(option: sender.currentTitle!)
         let quit =    drainBrain.getNext()
        
        
        if (quit == true) // continue if we have more questions
        {
              updateUI()
        }
        
        else {
            
            self.performSegue(withIdentifier: "goToResult", sender: self)
            
        }
        
        
        
    }
    
        
        override func viewDidLoad() {
                 updateUI() // update storyboard
            super.viewDidLoad()
         
            // Do any additional setup after loading the view.
        }
         
        
        // set storyboard for next question
        
        func updateUI () {
            questionLabel.text = drainBrain.getQues()
            buttonOneLabel.setTitle(drainBrain.getOption1(), for: .normal)
            buttonTwoLabel.setTitle(drainBrain.getOption2(), for: .normal)
            buttonThreeLabel.setTitle(drainBrain.getOption3(), for: .normal)
          
    }
    
    // passs over the user's score to the next screen.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultsController
            destinationVC.Score = drainBrain.userscore
            ResetQuiz()

            
        }
    }
    
    
    
    // reset the quiz to the beginning
    func ResetQuiz () {
        drainBrain.userscore = 0
        drainBrain.counter = 0
        return
        
    }

 

}

