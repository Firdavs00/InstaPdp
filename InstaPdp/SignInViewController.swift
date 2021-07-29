//
//  SignInViewController.swift
//  InstaPdp
//
//  Created by MacBook Pro on 28/07/21.
//

import UIKit

class SignInViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

//  Mark: - Methods
    func callSignUpController(){
        let vc = SignUpViewController(nibName: "SignUpViewController", bundle: nil)
        self.present(vc, animated: true, completion: nil)
    }
    
    
    
    
//  Mark: - Action
    @IBAction func onSignIn(_ sender: Any) {
        sceneDelegate().callHomeViewController()
    }
    
    @IBAction func onSignUp(_ sender: Any) {
        callSignUpController()
    }
    
}
