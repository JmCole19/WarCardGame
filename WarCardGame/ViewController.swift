//
//  ViewController.swift
//  WarCardGame
//
//  Created by Jason Coleman on 9/8/20.
//  Copyright © 2020 Jason Coleman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var playerScore: UILabel!
    
    @IBOutlet weak var cpuScore: UILabel!
    
    var leftScore = 0
    
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func dealTapped(_ sender: Any) {
        
        //Randomizes numbers
        let leftNumber = Int.random(in: 2...14)
        
        let rightNumber = Int.random(in: 2...14)
        
        //left and right image view changing
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        //Controls logic behind score system
        if leftNumber > rightNumber {
            leftScore += 1
            
            playerScore.text = String(leftScore)
        } else if leftNumber < rightNumber {
            rightScore += 1
            
            cpuScore.text = String(rightScore)
        } else {
            //Tie
        }
    }
    
}

