//
//  ViewController.swift
//  Flashcards3
//
//  Created by Salamata Bah on 2/27/21.
//

import UIKit

struct Flashcard{
    var question: String
    var answer: String
}
class ViewController: UIViewController {

    @IBOutlet weak var answer_back: UILabel!
    
    @IBOutlet weak var question_front: UILabel!
    
    var flashcards = [Flashcard]()
    var currentIndex = 0
    
    @IBAction func didTapOnPrev(_ sender: Any) {
    }
    
    
    @IBAction func didTapOnNext(_ sender: Any) {
        currentIndex = currentIndex + 1
        updateLabels()
        updateNextPrevButtons()
    }
    
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var prevButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateFlashcard(question: "what month is this?", answer: "March")
    }

    @IBAction func didTapOnFlashCard(_ sender: Any) {
        if(question_front.isHidden == false){
            question_front.isHidden = true
            
        }
        else {
            question_front.isHidden = false
            
        }
    }
    
    @IBAction func didTapAnswer(_ sender: Any) {
        answer_back.isHidden = true
    }
    
    func updateFlashcard(question: String, answer: String) {
        let flashcard = Flashcard(question: question, answer: answer)
        flashcards.append(flashcard)
        
        print("Added new")
        print("we now have \(flashcards.count) flashcards")
        
        currentIndex = flashcards.count - 1
        print("our curr index is \(currentIndex)")
        
        updateNextPrevButtons()
        updateLabels()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let navigationController = segue.destination as! UINavigationController
        let createController = navigationController.topViewController as! CreationViewController
        createController.flashcardsController = self
        
    }
    
    func updateNextPrevButtons(){
        
        if currentIndex == 0 {
            prevButton.isEnabled = false
        }else {
            prevButton.isEnabled = true
        }
        if currentIndex == flashcards.count - 1{
            nextButton.isEnabled = false
        } else{
            nextButton.isEnabled = true
        }
        
       
    }
    
    func updateLabels() {
        let currentFlashcard = flashcards[currentIndex]
        
        question_front.text = currentFlashcard.question
        answer_back.text = currentFlashcard.answer
    }
    
}


