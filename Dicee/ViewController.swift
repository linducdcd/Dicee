//
//  ViewController.swift
//  Dicee
//
//  Created by Lind Ucdcd on 5/1/19.
//  Copyright © 2019 Lind Ucdcd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //MARK: - var an Arrays
    var randomDiceR : Int = 0
    var randomDiceL : Int = 0
    
    let diceArray = ["dice1" , "dice2" , "dice3" , "dice4" , "dice5" , "dice6" ]
    
    //MARK: - Outlets And Action
    @IBOutlet weak var diceOutletR: UIImageView!
    
    @IBOutlet weak var diceOutletL: UIImageView!
    
    @IBAction func rollButton(_ sender: Any) {
        updateDiceImage()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateDiceImage()

    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDiceImage()
    }
    //MARK: - main function with all formul
    func updateDiceImage() {
        randomDiceR = Int(arc4random_uniform(6))
        randomDiceL = Int(arc4random_uniform(6))
        
        
        diceOutletL.image = UIImage(named: diceArray[randomDiceL])
        diceOutletR.image = UIImage(named: diceArray[randomDiceR])
        
    }

}

