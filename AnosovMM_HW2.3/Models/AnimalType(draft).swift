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
                    "Котейка"
                case .dog:
                    "Собакен"
                case .parrot:
                    "Попугайкин"
                }
            }
}
