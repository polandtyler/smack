//
//  CreateAccountVC.swift
//  Smack
//
//  Created by A664291 on 8/7/17.
//  Copyright © 2017 KingdomBits. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func closePressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
}
