//
//  ViewController.swift
//  AnosovMM_HW2.3
//
//  Created by Михаил on 13.07.2021.
//

import UIKit

class LoginViewController: UIViewController {
    
    //MARK: IB Outlets
    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var userPasswordTF: UITextField!
    @IBOutlet weak var passwordRemaindButton: UIButton!
    @IBOutlet weak var usernameRemaindButton: UIButton!
    @IBOutlet weak var logInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logInButton.layer.cornerRadius = logInButton.frame.width / 15
        
    }
    // MARK: Override methods
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let dvc = segue.destination as? WelcomeViewController else { return }
        dvc.userNameTF = userNameTF.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
    }
    
    // MARK: IB Actions
    
    @IBAction func logInAction(from sender: UIButton) {
        if userNameTF.text == "User" && userPasswordTF.text == "Password" {
        } else {
            showAlert(title: "Warning", message: "Input user name or password is incorrect. Please try more.")
        }
    }
    
    @IBAction func identifySourceAlert(from sender: UIButton) {
        switch sender {
        case passwordRemaindButton:
            showAlert(title: "OOPS", message: "Your password is Password")
        default:
            showAlert(title: "OOPS", message: "Your user name is User")
        }
    }
    
    @IBAction func unwindSegueToLoginScreen(for unwindSegue: UIStoryboardSegue) {
        userNameTF.text = ""
        userPasswordTF.text = ""
    }
        
    // MARK: Private methods
    
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let successAction = UIAlertAction(title: "OK", style: .default) {_ in
            self.userPasswordTF.text = ""
            self.userNameTF.text = ""
        }
        
        alert.addAction(successAction)
        present(alert, animated: true)
    }
}
