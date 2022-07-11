//
//  ViewController.swift
//  NBA Quiz
//
//  Created by Hector Carmona on 7/3/22.
//

import UIKit
import SwiftConfettiView

class MenuViewController: UIViewController {

    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var backgroundView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.setHidesBackButton(true, animated: false)
        playButton.layer.cornerRadius = 25
        conffetiAnimation()
    }

    @IBAction func playButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "goToQuestions", sender: self)
        
    }
    
    func conffetiAnimation() {
        let conffetiView = SwiftConfettiView(frame: self.view.bounds)
        conffetiView.type = .image(UIImage(named: "bbback")!)
        backgroundView.addSubview(conffetiView)
        conffetiView.startConfetti()
    }
    
}

