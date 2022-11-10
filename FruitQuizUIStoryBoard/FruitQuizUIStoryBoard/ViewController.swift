//
//  ViewController.swift
//  FruitQuizUIStoryBoard
//
//  Created by chandni chaudhari on 07/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Add Code here done
    // make @IBOutlet for Previous button
    // make @IBOutlet for next button
    
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var previousButton: UIButton!
    @IBOutlet weak var optionOButton: UIButton!
    @IBOutlet weak var optionMButton: UIButton!
    @IBOutlet weak var optionAButton: UIButton!
    @IBOutlet weak var rightClick: UIImageView!
    @IBOutlet weak var FruitImageView: UIImageView!
    var arrayQuiz: [SmartQuiz] = []
    var currentQuizIndex: Int = 0
    var firstIndex : Int = 0
    
    // there are 3 items in the array
    // so the index of last item is 2
    var lastIndex : Int = 2
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hide()
        makeQuizData()
        loadFirstQuiz()
        handleLogicNextPreviousButtons()
    }
    
    @IBAction func optionOButtonClick(_ sender: UIButton) {
        showCross()
    }
    
    @IBAction func optionMButtonClick(_ sender: UIButton) {
        showTick()
    }
    
    @IBAction func optionAButtonClick(_ sender: UIButton) {
        showCross()
    }
    
    // MARK: Add Code here : done
    // make @IBAction for previous button
    // make @IBAction for next button
    
    @IBAction func previousButton(_ sender: UIButton) {
        previousLogic()
    }
    @IBAction func nextButton(_ sender: Any) {
        nextLogic()
        
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
    
    func makeQuizData() {
        let quiz1 = SmartQuiz(fruit: "Apple", buttonALabel: "GrapeFruit", buttonMLabel: "Apple", buttonOLabel: "Orange")
        let quiz2 = SmartQuiz(fruit: "Mango", buttonALabel: "Grapes", buttonMLabel: "Mango", buttonOLabel: "Orange")
        let quiz3 = SmartQuiz(fruit: "Orange", buttonALabel: "Apple", buttonMLabel: "Orange", buttonOLabel: "Grapes")
        arrayQuiz.append(quiz1)//insert
        arrayQuiz.append(quiz2)
        arrayQuiz.append(quiz3)
    }
    
    func loadFirstQuiz() {
        let quiz1 = arrayQuiz[0]
        FruitImageView.image = UIImage(named: quiz1.fruit)
        optionOButton.setTitle(quiz1.buttonOLabel, for: .normal)
        optionAButton.setTitle(quiz1.buttonALabel, for: .normal)
        optionMButton.setTitle(quiz1.buttonMLabel, for: .normal)
    }
    
    func loadNextPreviousQuiz(index: Int) {
        let change = arrayQuiz[index]
        FruitImageView.image = UIImage(named: change.fruit)
        optionOButton.setTitle(change.buttonOLabel, for: .normal)
        optionAButton.setTitle(change.buttonALabel, for: .normal)
        optionMButton.setTitle(change.buttonMLabel, for: .normal)
    }
    
    
    func handleLogicNextPreviousButtons() {
        if currentQuizIndex == firstIndex {
            // MARK: done
            previousButton.isHidden = true
           
        }  else if currentQuizIndex == lastIndex {
            // MARK: done
            nextButton.isHidden = true
            
        } else {
            // MARK: done
            nextButton.isHidden = false
            previousButton.isHidden = false
  
        }
    }
    
    // TODO: call this function inside @IBAction of next button
    func nextLogic() {
    currentQuizIndex += 1
        loadNextPreviousQuiz(index: currentQuizIndex)
        handleLogicNextPreviousButtons()
    }
    
    // TODO: call this function inside @IBAction of previous button
    func previousLogic() {
        currentQuizIndex -= 1
            loadNextPreviousQuiz(index: currentQuizIndex)
        handleLogicNextPreviousButtons()
    }
    
}

struct SmartQuiz {
    var fruit: String
    var buttonALabel: String
    var buttonMLabel: String
    var buttonOLabel: String
}

