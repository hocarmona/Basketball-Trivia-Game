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
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var questionCounterLabel: UILabel!
    
    
    var questionCounter: Int = 1
    var quizBrain = QuizBrain(currentQuestion: 0)
    let numOfQuestions = 10
    var progress: Float {
        return Float(questionCounter) / Float(numOfQuestions)
    }
    var enableSegue: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureMainMenu()
        quizBrain.getRandomQuestion(counter: questionCounter)
        updateQuestionsUI()
    }
    
    //MARK: - UI actions
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        enableOptionButtons(enable: false)
        let check = quizBrain.checkAnswer(answer: sender.currentTitle!)
        if check {
            sender.backgroundColor = .systemGreen
            resultLabel.text = "Correct Answer"
            resultLabel.textColor = .green
        } else {
            sender.backgroundColor = .red
            resultLabel.text = "Incorrect Answer"
            resultLabel.textColor = .red
        }
        
    }
    
    @IBAction func nextButtonPressed(_ sender: UIButton) {
        if enableSegue {
            configureMainMenu()
            self.performSegue(withIdentifier: K.goToResult, sender: self)
        }
        enableOptionButtons(enable: true)
        quizBrain.getRandomQuestion(counter: questionCounter)
        updateQuestionsUI()
        if questionCounter >= numOfQuestions {
            print("Finish congrats")
            questionCounter = 1
        } else {
            questionCounter += 1
        }
        progressBar.progress = progress
        questionCounterLabel.text = "\(questionCounter)/10"
        if questionCounter == 10 {
            nextButton.setTitle("See result", for: .normal)
            enableSegue = true
        }
    }
    
    
    //MARK: - UI elements modifications
    
    func configureMainMenu() {
        navigationItem.setHidesBackButton(true, animated: false)
        option1Button.layer.cornerRadius = 25
        option2Button.layer.cornerRadius = 25
        option3Button.layer.cornerRadius = 25
        option4Button.layer.cornerRadius = 25
        nextButton.layer.cornerRadius = 15
        nextButton.setTitle("Next", for: .normal)
        enableOptionButtons(enable: true)
        questionCounter = 1
        progressBar.progress = progress
        questionCounterLabel.text = "\(questionCounter)/10"
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

    }
        
    func enableOptionButtons(enable: Bool) {
        option1Button.isUserInteractionEnabled = enable
        option2Button.isUserInteractionEnabled = enable
        option3Button.isUserInteractionEnabled = enable
        option4Button.isUserInteractionEnabled = enable
        nextButton.isUserInteractionEnabled = !enable
        nextButton.alpha = enable ? 0.5 : 1.0
        resultLabel.isHidden = enable
    }
    

}
