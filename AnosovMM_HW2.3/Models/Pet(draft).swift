//
//  Pet.swift
//  AnosovMM_HW2.3
//
//  Created by Михаил on 16.07.2021.
//

struct Pet {
    let name: String
    let AnimalTypes: [AnimalType]
    
    enum AnimalType: Character {
        case cat = "🐈"
        case dog = "🐕"
        case parrot = "🦜"
    }
}
