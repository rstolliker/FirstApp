//
//  ViewController.swift
//  War
//
//  Created by Ryan S on 1/30/16.
//  Copyright © 2016 Ryan S. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstCardImageView: UIImageView!
    @IBOutlet weak var secondCardImageView: UIImageView!
    @IBOutlet weak var playRoundButton: UIButton!
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var playerScoreLabel: UILabel!
    var playerScore: Int = 0
    @IBOutlet weak var enemyScoreLabel: UILabel!
    var enemyScore: Int = 0
    
    var cardNamesArray : [String] = ["card2", "card3", "card4", "card5", "card6", "card7", "card8", "card9", "card10", "jack", "queen", "king", "ace"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playRoundTapped(sender: UIButton) {
        // Randomize a number for the first image view
        let firstRandomNumber = Int(arc4random_uniform(13))
        
        //Construct string with that number
        let firstCardString : String = self.cardNamesArray[firstRandomNumber]
        
        // set view to corresponding number
        self.firstCardImageView.image = UIImage(named: firstCardString)
        
        let secondRandomNumber = Int(arc4random_uniform(13))
        
        let secondCardString:String = self.cardNamesArray[secondRandomNumber]
        
        
        self.secondCardImageView.image = UIImage(named: secondCardString)
        
        // Determine highter card
        if firstRandomNumber > secondRandomNumber {
            self.playerScore += 1
            self.playerScoreLabel.text = String(self.playerScore)
        } else if firstRandomNumber == secondRandomNumber {
            // TODO: tie
        } else {
            self.enemyScore += 1
            self.enemyScoreLabel.text = String(self.enemyScore)
        }
    }

}

