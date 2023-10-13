//
//  Validtor.swift
//  Demo_MVP
//
//  Created by ihab saad on 13/10/2023.
//

import Foundation
import UIKit
class Validtor {
    
     static let shard = Validtor()
    
    private let format = "SELF MATCHES %@"
    
    func isValidEmail(email: String) -> Bool {
            let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
            
            let emailPred = NSPredicate(format:format, emailRegEx)
            return emailPred.evaluate(with: email)
        }
    func isValidPassword(password: String) -> Bool {
          let passRegEx = "^(?=.*[A-Z])(?=.*[!@#$&*])(?=.*[0-9])(?=.*[a-z]).{8,64}$"
          
          let passPred = NSPredicate(format:format, passRegEx)
          return passPred.evaluate(with: password)
      }
}
