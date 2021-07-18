//
//  Profile.swift
//  AnosovMM_HW2.3
//
//  Created by Михаил on 16.07.2021.
//

struct UserProfile {
    let authorization: Authorization
    let personalInfo: PersonalInfo
    
    static func getUserProfile() -> UserProfile {
        UserProfile(
            authorization: Authorization (
                username: "manosov",
                password: "12345",
                networkStatus: true,
                userStatus: "В поиске свежих идей"
            ),
            personalInfo: PersonalInfo(
                name: "Михаил",
                lastname: "Аносов",
                birthDate: "14.07.1990",
                horoscopeSign: "🦀",
                gender: "Мужской",
                placeOfBirth: "Москва",
                placeOfRezidence: "Москва",
                familyStatus: .married,
                pets: ["🐈","🐜"],
                hobbies: ["🧑‍💻","👨‍🎨","🏂","🚴‍♂️","🏃","🛹","🤿"],
                detailInfo: DetailInfo(
                    educateOrganizations: [
                        EducateOrganization(
                            name: "Московский институт имени С.Ю.Витте",
                            yearIn: "2006",
                            yearOut: "2009",
                            fullName: "Московский Технический колледж, 2006 - 2009"),
                        EducateOrganization(
                            name: "Московский институт имени С.Ю.Витте",
                            yearIn: "2010",
                            yearOut: "2013",
                            fullName: "Московский институт имени С.Ю.Витте, 2010 - 2013")],
                    workPlaces: [
                        WorkPlace(
                            organizationName: "Gazprombank AO", specialization: "Lead system analyst",
                            dateIn: "2019",
                            dateOut: "Until now"),
                        WorkPlace(
                            organizationName: "Tinkoff Group", specialization: "Senior system analyst",
                            dateIn: "2018",
                            dateOut: "2019"),
                        WorkPlace(
                            organizationName: "Alfa Bank", specialization: "",
                            dateIn: "2017",
                            dateOut: "2018")
                    ],
                    contactInfo: [
                        Contact(
                            type: "inst",
                            value: "mikhael.a"),
                        Contact(
                            type: "teleg",
                            value: "mianosov"),
                        Contact(
                            type: "email",
                            value: "manosov14@gmail.com")
                    ]
                ),
                favoriteQuotes: [
                    "Чтобы освящать других нужно носить солнце в себе",
                    "Чтобы освящать других нужно носить солнце в себе",
                    "Чтобы освящать других нужно носить солнце в себе",
                    "Чтобы освящать других нужно носить солнце в себе",
                    "Чтобы освящать других нужно носить солнце в себе",
                    "Чтобы освящать других нужно носить солнце в себе"
                ]
            )
        )
    }
} 

