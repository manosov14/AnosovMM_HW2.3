//
//  DetailViewController.swift
//  AnosovMM_HW2.3
//
//  Created by Михаил on 17.07.2021.
//

import UIKit

class DetailInfoViewController: UIViewController {
    var birthDay: String? = nil
    var familyStatus: String? = nil
    
    @IBOutlet weak var birthDayOU: UILabel!
    @IBOutlet weak var familyStatusOU: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        birthDayOU.text = self.birthDay
        familyStatusOU.text = self.familyStatus
    }
}
