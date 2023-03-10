//
//  AppCoordinator.swift
//  Maps
//
//  Created by Анастасия Лосикова on 2/9/23.
//

import Foundation

// for keeping loggedin user info

class LoggedUserData {

    // MARK: - Public properties)

    let user: User

    // MARK: - Initializers

    init(login: String, password: String) {
        user = User(login: login, password: password)
    }

    // MARK: - Public methods

    static func saveUser(login: String, password: String) {
        let defaults = UserDefaults.standard

        defaults.set(login, forKey: "login")
        defaults.set(password, forKey: "password")
    }

    static func getUser() -> LoggedUserData {
        let defaults = UserDefaults.standard

        let userData = LoggedUserData(
            login: defaults.string(forKey: "login") ?? "",
            password: defaults.string(forKey: "password") ?? ""
        )
        return userData
    }

    static func clearUser() {
        let defaults = UserDefaults.standard

        defaults.set(nil, forKey: "login")
        defaults.set(nil, forKey: "password")
    }

}
