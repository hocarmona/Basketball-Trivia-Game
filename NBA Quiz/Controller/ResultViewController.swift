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
    
    
    var correctAnswers: Int = 0
    var totalOfQuestions: Int = 0
    var confettiView = SwiftConfettiView()

    override func viewDidLoad() {
        super.viewDidLoad()
        print("\(correctAnswers) / \(totalOfQuestions)")
        navigationItem.setHidesBackButton(true, animated: false)
        menuButton.layer.cornerRadius = 15
        scoreNumberLabel.text = "\(correctAnswers)/\(totalOfQuestions)"
        conffetiAnimation()

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
