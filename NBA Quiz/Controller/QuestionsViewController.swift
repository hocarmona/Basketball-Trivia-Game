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
    
    var questionCounter: Int = 1
    var quizBrain = QuizBrain(currentQuestion: 0)
    let numOfQuestions = 10
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureMainMenu()
        quizBrain.getRandomQuestion(counter: questionCounter)
        updateQuestionsUI()
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let check = quizBrain.checkAnswer(answer: sender.currentTitle!)
        resultLabel.isHidden = false
        if check {
            sender.backgroundColor = .green
            resultLabel.text = "Correct Answer"
            resultLabel.textColor = .green
        } else {
            sender.backgroundColor = .red
            resultLabel.text = "Incorrect Answer"
            resultLabel.textColor = .red
        }
        nextButton.isEnabled = true
        
    }
    
    @IBAction func nextButtonPressed(_ sender: UIButton) {
        quizBrain.getRandomQuestion(counter: questionCounter)
        updateQuestionsUI()
        resultLabel.isHidden = true
        nextButton.isEnabled = false
        if questionCounter >= numOfQuestions {
            print("Finish congrats")
            questionCounter = 1
        } else {
            questionCounter += 1
        }
    }
    
    
    //MARK: - Configure UI Elements
    
    func configureMainMenu() {
        option1Button.layer.cornerRadius = 25
        option2Button.layer.cornerRadius = 25
        option3Button.layer.cornerRadius = 25
        option4Button.layer.cornerRadius = 25
        nextButton.layer.cornerRadius = 15
        resultLabel.isHidden = true
        nextButton.isEnabled = false
        questionCounter = 1
    }
    
    func updateQuestionsUI() {
        option1Button.backgroundColor = .yellow
        option2Button.backgroundColor = .yellow
        option3Button.backgroundColor = .yellow
        option4Button.backgroundColor = .yellow
        questionLabel.text = quizBrain.getQuestion()
        option1Button.setTitle(quizBrain.getOption1(), for: .normal)
        option2Button.setTitle(quizBrain.getOption2(), for: .normal)
        option3Button.setTitle(quizBrain.getOption3(), for: .normal)
        option4Button.setTitle(quizBrain.getOption4(), for: .normal)
        navigationItem.setHidesBackButton(true, animated: false)

    }
    

}
