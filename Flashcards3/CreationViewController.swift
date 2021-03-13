//
//  CreationViewController.swift
//  Flashcards3
//
//  Created by Salamata Bah on 3/13/21.
//

import UIKit

class CreationViewController: ViewController {
    
    var flashcardsController : ViewController!
    
    
    @IBOutlet weak var questionTextField: UITextField!
    
    @IBOutlet weak var answerTextField: UITextField!
    
    @IBAction func didTapOnCancel(_ sender: Any) {
        dismiss(animated: true) 
    }
    
    @IBAction func didTapOnDone(_ sender: Any) {
        let questionText = questionTextField.text
        let answerText = answerTextField.text
        
        let alert = UIAlertController(title: "error", message: "missing text", preferredStyle: .alert)
        
        let Action = UIAlertAction(title: "yes", style: .default)
        
        alert.addAction(Action)
        
        if questionText == nil || answerText == nil || questionText!.isEmpty || answerText!.isEmpty{
            present(alert, animated: true)
        } else{
            flashcardsController.updateFlashcard(question: questionText!, answer: answerText!)
        
            dismiss(animated: true)
        }
    
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
               
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
     
     if questionText == nil || answerText == nil || questionText!.isEmpty || answerText!.isEmpty{
         let warning = UIAlertController(title: "error", message: "missing text", preferredStyle: UIAlertController.Style.alert)
         present(warning, animated: true)
         
     }
     else{
    */

}
