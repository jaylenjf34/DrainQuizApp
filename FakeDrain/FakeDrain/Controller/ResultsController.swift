//
//  ResultsController.swift
//  FakeDrain
//
//  Created by Jaylen Figueroa on 9/14/20.
//  Copyright © 2020 Jaylen Figueroa. All rights reserved.
//

import UIKit

class ResultsController: UIViewController {
    
    var Score : Int?
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var feedbackLabel: UILabel!
    @IBOutlet weak var resultImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UIUpdate() // call function to update the UI

       
    }
    
    
    
    
    func UIUpdate () {
        if(Score != nil) // check for nil value
        {
        let newScore = String(Score!)
        scoreLabel.text = newScore
        
        
        if(Score! > 100)
        {
            feedbackLabel.text = "Thaiboy is pleased, you are not FakeDrain"
            resultImage.image = UIImage(named: "thaiboy")
            return
        }
        
        
        else if ( 50 < Score! && Score! <= 100) {
            feedbackLabel.text = "You scored fairly well, \n not great, but Bladee says its Ok "
                   resultImage.image = UIImage(named: "happybladee")
            
        }
        
        else if (Score! < 50) {
            feedbackLabel.text = " You are fake Drain!, Ecco says 20 years \n in the drain dungeon for you"
            resultImage.image = UIImage(named:"ecco")
            }
            
            return
            
        }
        
        else {
            
            print("error")
            return
            
        }
        
        
        
        
    }

    
    // retry button gets pressed
    @IBAction func retryPressed(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
    }
    
   

}
