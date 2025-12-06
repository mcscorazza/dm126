//
//  LoginType.swift
//  App_BemEstar
//
//  Created by Marcos Corazza on 12/5/25.
//

import Foundation
import CryptoKit

struct LoginType: Identifiable {

    let id: Int
    
    public var username: String
    public var passwordHash: String

    init(id: Int, username: String, password: String) {
        self.id = id
        self.username = username
        self.passwordHash = LoginType.sha256(password)
    }

    public static func sha256(_ input: String) -> String {
        let data = Data(input.utf8)
        let digest = SHA256.hash(data: data)
        return digest.map { String(format: "%02x", $0) }.joined()
    }
}
