//
//  Profile.swift
//  AnosovMM_HW2.3
//
//  Created by Михаил on 16.07.2021.
//

struct UserProfile {
    let userInfo: UserInfo
    let personalInfo: PersonalInfo
    
    static func getUserProfile() -> UserProfile {
        UserProfile(
            userInfo: UserInfo(
                username: "manosov14",
                password: "12345",
                email: "manosov14@gmail.com"),
            personalInfo: PersonalInfo(
                name: "Михаил",
                lastname: "Аносов",
                gender: "Мужской",
                detailInfo: DetailInfo(
                    placeOfBirth: "Москва",
                    horoscopeSign: HoroscopeSign(
                        name: "Рак",
                        symbolSign: "🦀")),
                placeOfRezidence: "Москва",
                workPlaces: [
                    WorkPlace(
                        organizationName: "Gazprombank AO", specialization: "Lead system analyst",
                        dateIn: "2019",
                        dateOut: "Until now"),
                    WorkPlace(
                        organizationName: "Tinkoff Group", specialization: "Senior system Analyst",
                        dateIn: "2018",
                        dateOut: "2019"),
                    WorkPlace(
                        organizationName: "Alfa Bank", specialization: "",
                        dateIn: "2017",
                        dateOut: "2018")]
            ))
    }
} 

