//
//  ResultViewController.swift
//  NBA Quiz
//
//  Created by Hector Carmona on 7/7/22.
//

import UIKit
import SwiftConfettiView

class ResultViewController: UIViewController {

    @IBOutlet weak var scoreNumberLabel: UILabel!
    @IBOutlet weak var menuButton: UIButton!
    @IBOutlet weak var backgroundView: UIImageView!
    @IBOutlet weak var resultMessageLabel: UILabel!
    
    var confettiView = SwiftConfettiView()
    var correctAnswers: Int = 0
    var totalOfQuestions: Int = 0
    var resultMessage: String {
        switch correctAnswers {
        case 0...totalOfQuestions/3:
            return "Work harder next time"
        case totalOfQuestions/3...2*totalOfQuestions/3:
            return "Not bad"
        case 2*totalOfQuestions/3..<totalOfQuestions:
            return "Good job!"
        case totalOfQuestions:
            return "Perfect!!"
        default:
            return ""
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        print("\(correctAnswers) / \(totalOfQuestions)")
        navigationItem.setHidesBackButton(true, animated: false)
        menuButton.layer.cornerRadius = 15
        scoreNumberLabel.text = "\(correctAnswers)/\(totalOfQuestions)"
        conffetiAnimation()
        resultMessageLabel.text = resultMessage

    }
    
    @IBAction func menuButtonPressed(_ sender: UIButton) {
        
        performSegue(withIdentifier: K.goToMenu, sender: self)
    }
    
    func conffetiAnimation() {
        let conffetiView = SwiftConfettiView(frame: self.view.bounds)
        conffetiView.type = .confetti
        backgroundView.addSubview(conffetiView)
        conffetiView.intensity = 0.90
        conffetiView.startConfetti()
    }
    
    
}
