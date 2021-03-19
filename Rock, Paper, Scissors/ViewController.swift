//
//  ViewController.swift
//  Rock, Paper, Scissors
//
//  Created by Andrew Nowak on 3/11/21.
//  Copyright © 2021 Andrew Nowak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//MARK: - Outlets, Variables, Constants, etc.
    
    @IBOutlet weak var winnerLabel: UILabel!
    
    @IBOutlet weak var playerImageView: UIImageView!
    
    @IBOutlet weak var computerImageView: UIImageView!
    
    @IBOutlet var choicesImageViews: [UIImageView]!
    
    @IBOutlet weak var choiceStackView: UIStackView!
    
    
    
//MARK: - ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    
    }
//MARK: - Actions, Functions, etc.

    @IBAction func whenGameTapGestureTapped(_ sender: UITapGestureRecognizer) {
        let selectedPoint = sender.location(in: choiceStackView)
        
        var userSelection = 0
        
        for choice in choicesImageViews {
            if choice.frame.contains(selectedPoint) {
                let currentImage = choice.image
                playerImageView.image = currentImage
                
                if currentImage == choicesImageViews[0].image {
                    userSelection = 0
                }
                if currentImage == choicesImageViews[1].image {
                    userSelection = 1
                }
                if currentImage == choicesImageViews[2].image {
                    userSelection = 2
                }
            
            
            
            }
        }
        
       
        
        
        let randomNumber = Int.random(in: 0...2)
        if randomNumber == 0 {
            computerImageView.image = choicesImageViews[0].image
        }
        if randomNumber == 1 {
            computerImageView.image = choicesImageViews[1].image
        }
        if randomNumber == 2 {
            computerImageView.image = choicesImageViews[2].image
        }
   
        
        
        if playerImageView.image == computerImageView.image {
            winnerLabel.text = "Tie"
        }         
        
        
        if (randomNumber == 0) && (userSelection == 1) {
            winnerLabel.text = "You Lose"
        }
        if (randomNumber == 0) && (userSelection == 2) {
            winnerLabel.text = "You Win!"
        }
        
        
        if (randomNumber == 1) && (userSelection == 0) {
            winnerLabel.text = "You Win!"
        }
        if (randomNumber == 1) && (userSelection == 2) {
            winnerLabel.text = "You Lose"
        }
        
        
        if (randomNumber == 2) && (userSelection == 0) {
            winnerLabel.text = "You Lose"
        }
        if (randomNumber == 2) && (userSelection == 1) {
            winnerLabel.text = "You Win!"
        }
    
    
    
    
    
    
    
    }
    



}

