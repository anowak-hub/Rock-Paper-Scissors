//
//  ViewController.swift
//  Rock, Paper, Scissors
//
//  Created by Andrew Nowak on 3/11/21.
//  Copyright © 2021 Andrew Nowak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//MARK: - UIOutlets, Variables, Constants, etc.
    
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
        
        for choice in choicesImageViews {
            if choice.frame.contains(selectedPoint) {
                let currentImage = choice.image
                playerImageView.image = currentImage
            }
        }
        
          print("Tap Gesture Recognized")
    }
    



}

