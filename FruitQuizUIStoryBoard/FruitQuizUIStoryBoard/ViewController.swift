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
        showCross()
    }
    
    @IBAction func optionMButtonClick(_ sender: UIButton) {
        showCross()
    }
    
    @IBAction func optionAButtonClick(_ sender: UIButton) {
        showTick()
    }
    
    func showTick() {
        rightClick.image = UIImage(systemName: "checkmark.seal.fill")
        rightClick.isHidden = false
        rightClick.tintColor = UIColor.green
    }
    
    func hide() {
        rightClick.isHidden = true
    }
    
    func showCross() {
        rightClick.image = UIImage(systemName: "xmark.circle")
        rightClick.tintColor = UIColor.red
        rightClick.isHidden = false
    }
}
