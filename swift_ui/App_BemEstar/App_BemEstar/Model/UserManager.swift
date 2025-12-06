//
//  UserManager.swift
//  App_BemEstar
//
//  Created by user288580 on 12/5/25.
//

import Foundation

class UserManager: ObservableObject {
    @Published var users: [LoginType] = [
        LoginType(id: 1, username: "Admin", password: "abc123"),
        LoginType(id: 2, username: "Corazza", password: "pass123"),
    ]

    func addUser(user: String, pass: String) {
        let nextId = (users.map { $0.id }.max() ?? 0) + 1
        let newUser = LoginType(id: nextId, username: user, password: pass)
        users.append(newUser)
    }

}
