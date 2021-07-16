//
//  AnimalType(draft).swift
//  AnosovMM_HW2.3
//
//  Created by Михаил on 16.07.2021.
//

enum AnimalType: Character {
    case cat = "🐈"
    case dog = "🐕"
    case parrot = "🦜"

            var typeName: String {
                switch self {
                case .cat:
                    return "Котейка"
                case .dog:
                    return "Собакен"
                case .parrot:
                    return "Попугайкин"
                }
            }
}
