//
//  OpeningViewController.swift
//  EnglishWords
//
//  Created by Owner on 2021/02/03.
//

import UIKit

class OpeningViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func toNext(_ sender:UIButton) {
        performSegue(withIdentifier: "start", sender: nil)
    
        }
}
