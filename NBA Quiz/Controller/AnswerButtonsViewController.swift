//
//  AnswerButtonsViewController.swift
//  NBA Quiz
//
//  Created by Hector Carmona on 7/4/22.
//

import UIKit

class AnswerButtonsViewController: UIViewController {

    @IBOutlet weak var option1Button: UIButton!
    @IBOutlet weak var option2Button: UIButton!
    @IBOutlet weak var option3Button: UIButton!
    @IBOutlet weak var option4Button: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        option1Button.layer.cornerRadius = 25
        option2Button.layer.cornerRadius = 25
        option3Button.layer.cornerRadius = 25
        option4Button.layer.cornerRadius = 25
        
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
