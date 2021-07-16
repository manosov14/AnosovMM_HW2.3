//
//  Hobbie.swift
//  AnosovMM_HW2.3
//
//  Created by Михаил on 16.07.2021.
//

enum Hobbie: Character {
    case programming = "🧑‍💻"
    case printing = "👨‍🎨"
    case snowboard = "🏂"
    case velocity = "🚴‍♂️"
    case run = "🏃"
    case longboarding = "🛹"
    case swimming = "🤿"
    
    var definit:  String {
        switch self {
        case .programming:
            "Программирование на swift"
        case .printing:
            "Рисование"
        case .snowboard:
            "Катание на сноуборде"
        case .velocity:
            "Прогулки на велосипеде "
        case .run:
            "Пробежки"
        case .longboarding:
            "Катание на лонгборде"
        case .swimming:
            " Дайвинг"
        }
    }
}
