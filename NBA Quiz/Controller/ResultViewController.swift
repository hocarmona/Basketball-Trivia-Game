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
    var resultBrain = ResultBrain()

    override func viewDidLoad() {
        super.viewDidLoad()
        resultBrain.totalOfQuestions = totalOfQuestions
        resultBrain.correctAnswers = correctAnswers
        print("\(correctAnswers) / \(totalOfQuestions)")
        navigationItem.setHidesBackButton(true, animated: false)
        menuButton.layer.cornerRadius = 15
        scoreNumberLabel.text = "\(resultBrain.correctAnswers)/\(resultBrain.totalOfQuestions)"
        resultMessageLabel.text = resultBrain.resultMessage
        conffetiAnimation(typeConffeti: resultBrain.resultMessage)

    }
    
    @IBAction func menuButtonPressed(_ sender: UIButton) {
        
        performSegue(withIdentifier: K.goToMenu, sender: self)
    }
    
    func conffetiAnimation(typeConffeti: String) {
        let conffetiView = SwiftConfettiView(frame: self.view.bounds)
        let imageType: String = resultBrain.typeConffeti
        if typeConffeti == K.perfect {
            conffetiView.type = .confetti
        } else if typeConffeti == K.goodJob {
            conffetiView.type = .star
        } else {
            conffetiView.type = .image(UIImage(named: imageType)!)
        }
        backgroundView.addSubview(conffetiView)
        conffetiView.startConfetti()
    }
    
    
}
