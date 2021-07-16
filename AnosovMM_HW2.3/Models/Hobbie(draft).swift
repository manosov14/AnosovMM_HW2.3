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
            return "Программирование на swift"
        case .printing:
            return "Рисование"
        case .snowboard:
            return "Катание на сноуборде"
        case .velocity:
            return "Прогулки на велосипеде "
        case .run:
            return "Пробежки"
        case .longboarding:
            return "Катание на лонгборде"
        case .swimming:
            return " Дайвинг"
        }
    }
}

