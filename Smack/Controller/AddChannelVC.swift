//
//  AddChannelVC.swift
//  Smack
//
//  Created by A664291 on 8/10/17.
//  Copyright © 2017 KingdomBits. All rights reserved.
//

import UIKit

class AddChannelVC: UIViewController {
    
    // Outlets
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var descriptionTxt: UITextField!
    @IBOutlet weak var bgView: UIView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
    }

    @IBAction func closeModalPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func createChannelPressed(_ sender: Any) {
    }
    
    func setupView() {
        let closeTouch = UITapGestureRecognizer(target: self, action: #selector(AddChannelVC.closeTap(_:)))
        bgView.addGestureRecognizer(closeTouch)
        
        nameText.attributedPlaceholder = NSAttributedString(string: "name", attributes: [NSAttributedStringKey.foregroundColor: smackPurplePlaceholder])
        descriptionTxt.attributedPlaceholder = NSAttributedString(string: "description", attributes: [NSAttributedStringKey.foregroundColor: smackPurplePlaceholder])
    }
    
    @objc func closeTap(_ recognizer: UITapGestureRecognizer) {
        dismiss(animated: true, completion: nil)
    }
}
