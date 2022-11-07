//
//  ViewController.swift
//  FruitQuizUIStoryBoard
//
//  Created by chandni chaudhari on 07/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    var checkMarkIsShown: Bool = true
    
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
        
        print("X")
    }
    @IBAction func optionMButtonClick(_ sender: UIButton) {
        print("X")
        
        
    }
    
    @IBAction func optionAButtonClick(_ sender: UIButton) {
        
        if checkMarkIsShown {
            FruitQuizUIStoryBoard.show()
            
        } else {
            hide()
        }
    
        }
    }

func show() {
    checkMarkIsShown = true
    
}
func hide() {
    checkMarkIsShown = false

}
