//
//  ViewController.swift
//  NBA Quiz
//
//  Created by Hector Carmona on 7/3/22.
//

import UIKit

class MenuViewController: UIViewController {

    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var backgroundView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.setHidesBackButton(true, animated: false)
        playButton.layer.cornerRadius = 25
    }

    @IBAction func playButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "goToQuestions", sender: self)
        
    }

    
}

