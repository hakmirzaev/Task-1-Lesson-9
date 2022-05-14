//
//  SignInViewController.swift
//  InstaPDP
//
//  Created by Bekhruz Hakmirzaev on 25/04/22.
//

import UIKit

class SignInViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    // MARK: - Method
    func callSignUpViewController(){
        let vc = SignUpViewController(nibName: "SignUpViewController", bundle: nil)
        self.present(vc, animated: true, completion: nil)
    }
    
    // MARK: - Action
    @IBAction func onSignedIn(_ sender: Any) {
        sceneDelegate().callHomeViewController()
    }
    
    @IBAction func onSignedUp(_ sender: Any) {
        callSignUpViewController()
    }
}
