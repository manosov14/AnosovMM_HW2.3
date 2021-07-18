//
//  DetailViewController.swift
//  AnosovMM_HW2.3
//
//  Created by Михаил on 17.07.2021.
//

import UIKit

class DetailInfoViewController: UIViewController {
    var birthDay = ""
    var familyStatus = ""
    var gender = ""
    var educations: [EducateOrganization] = []
    var hobbies: [String] = []
    var pets: [String] = []
    var favoriteQuotes: [String] = []
    
    @IBOutlet weak var birthDayOU: UILabel!
    @IBOutlet weak var familyStatusOU: UILabel!
    @IBOutlet weak var educateOrgOU: UILabel!
    @IBOutlet weak var hobbiesOU: UILabel!
    @IBOutlet weak var petsOU: UILabel!
    @IBOutlet weak var favoriteQuotesOU: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        birthDayOU.text = self.birthDay
        familyStatusOU.text = self.familyStatus
        
        // Подготовка блока "Образование"
        var educateOrgForDisplay = ""
        for educate in educations {
            educateOrgForDisplay += "\n \(educate.fullName)"
        }
        educateOrgOU.text = educateOrgForDisplay
        
        // Подготовка блока "Увлечения"
        var hobbiesForDisplay = ""
        for hobbie in hobbies {
            hobbiesForDisplay += "  \(hobbie)"
        }
        hobbiesOU.text = hobbiesForDisplay
        
        // Подготовка блока "Домашние животные"
        var petsForDisplay = ""
        for pet in pets {
            petsForDisplay += "  \(pet)"
        }
        petsOU.text = petsForDisplay
        
        // Подготовка блока "Личная информация"
        var favoriteQuotesForDisplay = ""
        for favoriteQuote in favoriteQuotes {
            favoriteQuotesForDisplay += "\n \(favoriteQuote)"
        }
        favoriteQuotesOU.text = favoriteQuotesForDisplay
    }
}
