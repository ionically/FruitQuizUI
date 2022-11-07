//
//  ViewController.swift
//  FruitQuizUIStoryBoard
//
//  Created by chandni chaudhari on 07/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var optionOButton: UIButton!
    @IBOutlet weak var optionMButton: UIButton!
    @IBOutlet weak var optionAButton: UIButton!
    @IBOutlet weak var rightClick: UIImageView!
    @IBOutlet weak var FruitImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func optionOButtonClick(_ sender: UIButton) {
        
        Button2()
        
    }
    @IBAction func optionMButtonClick(_ sender: UIButton) {
        
        Button2()
    }
    
    @IBAction func optionAButtonClick(_ sender: UIButton) {
        
        Button()
        
    }
    

   
}


func Button() {
    print("check")
    showLabel
    
}

func Button2() {
    print("cross")
}
