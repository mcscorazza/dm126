//
//  UserManager.swift
//  MovieList
//
//  Created by user288580 on 12/8/25.
//

import Foundation

class UserManager: ObservableObject {

    static let shared = UserManager()

    @Published var currentUser: LoginType?

    @Published var users: [LoginType] = [
        LoginType(id: 1, username: "Admin", password: "abc123"),
        LoginType(id: 2, username: "Corazza", password: "pass123"),
    ]

    func authenticate(username: String, pass: String) -> Bool {
        let inputHash = LoginType.sha256(pass)

        if let userFound = users.first(where: { user in
            user.username.lowercased() == username.lowercased()
                && user.passwordHash == inputHash
        }) {
            self.currentUser = userFound
            return true
        }
        return false
    }

    func addUser(user: String, pass: String) -> Bool {
        if users.contains(where: { $0.username == user }) {
            return false
        }
        let nextId = (users.map { $0.id }.max() ?? 0) + 1
        let newUser = LoginType(id: nextId, username: user, password: pass)
        users.append(newUser)
        print("Usuário criado: \(user) | Hash: \(newUser.passwordHash)")
        return true
    }

    func logout() {
        self.currentUser = nil
    }
}
