//
//  ResultViewController.swift
//  NBA Quiz
//
//  Created by Hector Carmona on 7/7/22.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var menuButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.setHidesBackButton(true, animated: false)
        menuButton.layer.cornerRadius = 15
        
    }
    

    
}
