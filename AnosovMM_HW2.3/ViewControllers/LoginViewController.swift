//
//  ViewController.swift
//  AnosovMM_HW2.3
//
//  Created by Михаил on 13.07.2021.
//

import UIKit

class LoginViewController: UIViewController {
    
    private let userInfo = UserProfile.getUserProfile()
    
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
    
    // MARK: Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVC = segue.destination as? UITabBarController else { return }
        
        for viewController in tabBarVC.viewControllers! {
            if let welcomeVC = viewController as? ContactViewController {
//                welcomeVC.userNameTF = userInfo.userInfo.username
            }
            else if let profileVC = viewController as? ProfileViewController {
                profileVC.placeOfBirth = userInfo.personalInfo.placeOfBirth
                profileVC.placeOfRezidence = userInfo.personalInfo.placeOfRezidence
//                profileVC.currentWorkPlace = userInfo.personalInfo.currentPlaceOfWork
                profileVC.userName = userInfo.authorization.username
                profileVC.fio = "\(userInfo.personalInfo.name) \(userInfo.personalInfo.lastname)"
                profileVC.status = userInfo.authorization.userStatus
                profileVC.pets = userInfo.personalInfo.pets
            }
//            else if let detailVC = viewController as? DetailInfoViewController {
//            }
        }
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
    }
    
    // MARK: IB Actions
    
    @IBAction func logInAction(from sender: UIButton) {
        if userNameTF.text == userInfo.authorization.username && userPasswordTF.text == userInfo.authorization.password {
        } else {
            showAlert(title: "Warning", message: "Input user name or password is incorrect. Please try more.")
        }
    }
    
    @IBAction func identifySourceAlert(from sender: UIButton) {
        switch sender {
        case passwordRemaindButton:
            showAlert(title: "OOPS", message: "Your password is \(userInfo.authorization.password)")
        default:
            showAlert(title: "OOPS", message: "Your user name is \(userInfo.authorization.username)")
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
