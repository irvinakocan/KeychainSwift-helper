//
//  ViewController.swift
//  KeychainSwift helper
//
//  Created by Macbook Air 2017 on 5. 1. 2024..
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Testing out KeychainSwift helper
        
        Keychain.setPassword(password: "JMB234!GS")
        // Keychain.deletePassword()
        let password = Keychain.getPassword()
        if let password = password {
            print("Your password is: \(password)\n")
        } else {
            print("Your password was not set.\n")
        }
        
        Keychain.setUser(user: User(name: "John",
                                    surname: "Frisby",
                                    id: "IMB12L",
                                    age: 32))
        // Keychain.deleteUser()
        let user = Keychain.getUser()
        if let user = user {
            print(user)
        }
        else {
            print("There is no user.\n")
        }
    }
}

