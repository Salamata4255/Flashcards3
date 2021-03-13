//
//  ViewController.swift
//  Flashcards3
//
//  Created by Salamata Bah on 2/27/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var answer_back: UILabel!
    
    @IBOutlet weak var question_front: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didTapOnFlashCard(_ sender: Any) {
        if(question_front.isHidden == false){
            question_front.isHidden = true
            
        }
        else {
            question_front.isHidden = false
            
        }
        print("mmmm")
    }
    
    @IBAction func didTapAnswer(_ sender: Any) {
        answer_back.isHidden = true
    }
    
    func updateFlashcard(question: String, answer: String) {
        question_front.text = question
        answer_back.text = answer
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let navigationController = segue.destination as! UINavigationController
        let createController = navigationController.topViewController as! CreationViewController
        createController.flashcardsController = self
        
    }
    
}


