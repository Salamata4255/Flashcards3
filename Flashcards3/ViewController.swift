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
}

