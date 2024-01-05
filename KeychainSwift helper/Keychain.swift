//
//  Keychain.swift
//  KeychainSwift helper
//
//  Created by Macbook Air 2017 on 5. 1. 2024..
//

import Foundation
import KeychainSwift

class Keychain {
    
    static func setPassword(password: String) {
        KeychainSwift().set(password, forKey: "password")
    }
    
    static func getPassword() -> String? {
        return KeychainSwift().get("password")
    }
    
    static func deletePassword() {
        KeychainSwift().delete("password")
    }
    
    static func setUser(user: User) {
        do {
            let userData = try JSONEncoder().encode(user)
            KeychainSwift().set(userData, forKey: "user")
        }
        catch {
            print("Failed to set User.")
        }
    }
    
    static func getUser() -> User? {
        guard let userData = KeychainSwift().getData("user") else {
            return nil
        }
        let user = try? JSONDecoder().decode(User.self, from: userData)
        return user
    }
    
    static func deleteUser() {
        KeychainSwift().delete("user")
    }
}
