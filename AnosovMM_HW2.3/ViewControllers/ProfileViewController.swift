//
//  ProfileViewController.swift
//  AnosovMM_HW2.3
//
//  Created by Михаил on 16.07.2021.
//

import UIKit

class ProfileViewController: UIViewController {
    
    var placeOfBirth: String? = nil
    var placeOfRezidence: String? = nil
    var currentWorkPlace: String? = nil
    
    private let userInfo = UserProfile.getUserProfile()
    
    @IBOutlet weak var placeOfBirthOU: UILabel!
    @IBOutlet weak var placeOfRezidenceOU: UILabel!
    @IBOutlet weak var placeOfWorkOU: UILabel!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let navBarVC = segue.destination as? UINavigationController else { return }
        
        for viewController in navBarVC.viewControllers {
            if let detailInfoVC = navBarVC.topViewController as? DetailInfoViewController {
                detailInfoVC.birthDay = userInfo.personalInfo.birthDate
                detailInfoVC.familyStatus = userInfo.personalInfo.detailInfo.familyStatus.rawValue
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        placeOfBirthOU.text = self.placeOfBirth
        placeOfRezidenceOU.text = self.placeOfRezidence
        placeOfWorkOU.text = self.currentWorkPlace
    }
}



