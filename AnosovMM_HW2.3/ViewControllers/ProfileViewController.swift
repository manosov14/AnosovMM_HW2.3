//
//  ProfileViewController.swift
//  AnosovMM_HW2.3
//
//  Created by Михаил on 16.07.2021.
//

import UIKit

class ProfileViewController: UIViewController {
    
    var fio = ""
    var status = ""
    var userName = ""
    var placeOfBirth = ""
    var placeOfRezidence = ""
    var currentWorkPlace = ""
    var pets: [String] = []
    
    private let userInfo = UserProfile.getUserProfile()
    
    @IBOutlet weak var fioOU: UILabel!
    @IBOutlet weak var userNameOU: UILabel!
    @IBOutlet weak var statusOU: UILabel!
    @IBOutlet weak var editOU: UIButton!
    @IBOutlet weak var placeOfBirthOU: UILabel!
    @IBOutlet weak var placeOfRezidenceOU: UILabel!
    @IBOutlet weak var logOutOU: UIButton!
    @IBOutlet weak var avatarImageOU: UIImageView!
    @IBOutlet weak var genderOU: UILabel!
    @IBOutlet weak var networkStatusOU: UILabel!
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let navBarVC = segue.destination as? UINavigationController else { return }
        
        for viewController in navBarVC.viewControllers {
            if let detailInfoVC = navBarVC.topViewController as? DetailInfoViewController {
                detailInfoVC.birthDay = userInfo.personalInfo.birthDate
                detailInfoVC.familyStatus = userInfo.personalInfo.familyStatus.rawValue
                detailInfoVC.gender = userInfo.personalInfo.gender
                detailInfoVC.educations = userInfo.personalInfo.detailInfo.educateOrganizations
                detailInfoVC.hobbies = userInfo.personalInfo.hobbies
                detailInfoVC.pets = userInfo.personalInfo.pets
                detailInfoVC.favoriteQuotes = userInfo.personalInfo.favoriteQuotes
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        avatarImageOU.layer.cornerRadius = avatarImageOU.frame.width / 2
        fioOU.text = self.fio
        statusOU.text = self.status
//        статус в сети
        editOU.layer.cornerRadius =  15
        userNameOU.text = self.userName
        placeOfBirthOU.text = self.placeOfBirth
        placeOfRezidenceOU.text = self.placeOfRezidence
        genderOU.text = userInfo.personalInfo.gender
        
        if userInfo.authorization.networkStatus == true {
            networkStatusOU.text = "Online"
        } else {
            networkStatusOU.text = "Offline"
        }
    }
}



