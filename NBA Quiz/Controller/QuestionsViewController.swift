//
//  QuestionsViewController.swift
//  NBA Quiz
//
//  Created by Hector Carmona on 7/4/22.
//

import UIKit

class QuestionsViewController: UIViewController {

    @IBOutlet weak var progressQuestions: UIProgressView!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var option1Button: UIButton!
    @IBOutlet weak var option2Button: UIButton!
    @IBOutlet weak var option3Button: UIButton!
    @IBOutlet weak var option4Button: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureButtons()
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
    }
    
    @IBAction func nextButtonPressed(_ sender: UIButton) {
    }
    
    
    //MARK: - Configure UI Elements
    
    func configureButtons() {
        option1Button.layer.cornerRadius = 25
        option2Button.layer.cornerRadius = 25
        option3Button.layer.cornerRadius = 25
        option4Button.layer.cornerRadius = 25
        nextButton.layer.cornerRadius = 15
        resultLabel.isHidden = true
    }
    

}
