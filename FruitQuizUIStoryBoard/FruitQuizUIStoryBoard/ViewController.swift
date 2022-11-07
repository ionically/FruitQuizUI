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
        hide()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func optionOButtonClick(_ sender: UIButton) {
        
        print("X")
    }
    @IBAction func optionMButtonClick(_ sender: UIButton) {
        print("X")
        
        
    }
    
    @IBAction func optionAButtonClick(_ sender: UIButton) {
        
       show()
    
    }
    
    func show() {
        rightClick.isHidden = false
        
    }
    func hide() {
        
        rightClick.isHidden = true
       
    }
}
