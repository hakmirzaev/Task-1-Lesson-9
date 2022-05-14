//
//  SignUpViewController.swift
//  InstaPDP
//
//  Created by Bekhruz Hakmirzaev on 25/04/22.
//

import UIKit

class SignUpViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    // MARK: - Method
    
    @IBAction func onSignedUp(_ sender: Any) {
        dismiss(animated: true, completion: nil )
    }
    
    // MARK: - Action
    @IBAction func onSignedIn(_ sender: Any) {
        dismiss(animated: true, completion: nil )
    }
    
}
