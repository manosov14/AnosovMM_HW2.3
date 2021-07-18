//
//  ViewViewController.swift
//  AnosovMM_HW2.3
//
//  Created by Михаил on 13.07.2021.
//

import UIKit

class ContactViewController: UIViewController {
    var userNameTF: String? = nil
    var userPasswordTF: String? = nil
    
    //MARK: IB Outlets
    
    @IBOutlet weak var logOutButton: UIButton!
    @IBOutlet weak var welcomeMessage: UILabel!
    
    // MARK: Override methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        logOutButton.layer.cornerRadius = logOutButton.frame.width / 15
        
        guard let userNameTF = self.userNameTF else { return }
        welcomeMessage.text = "Welcome👋, \(userNameTF) !"
    }
}
