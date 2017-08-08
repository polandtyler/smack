//
//  ChatVC.swift
//  Smack
//
//  Created by A664291 on 8/7/17.
//  Copyright © 2017 KingdomBits. All rights reserved.
//

import UIKit

class ChatVC: UIViewController {
    
    // OUTLETS
    @IBOutlet weak var menuBtn: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        menuBtn.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        
        // built into SWReveal
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
        
    }

}
