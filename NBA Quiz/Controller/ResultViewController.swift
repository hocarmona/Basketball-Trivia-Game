//
//  ResultViewController.swift
//  NBA Quiz
//
//  Created by Hector Carmona on 7/7/22.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var scoreNumberLabel: UILabel!
    @IBOutlet weak var menuButton: UIButton!
    
    var correctAnswers: Int = 0
    var totalOfQuestions: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("\(correctAnswers) / \(totalOfQuestions)")
        navigationItem.setHidesBackButton(true, animated: false)
        menuButton.layer.cornerRadius = 15
        scoreNumberLabel.text = "\(correctAnswers)/\(totalOfQuestions)"
        
    }
    

    
}
