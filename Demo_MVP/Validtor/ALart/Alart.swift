//
//  Alart.swift
//  Demo_MVP
//
//  Created by ihab saad on 13/10/2023.
//

import Foundation
import UIKit

extension String {
    var trimed: String {
        trimmingCharacters(in: .whitespacesAndNewlines)
    }
}
 
extension UIViewController {
    func showAlart(message: String) {
        let alart = UIAlertController(title: "ERROR🔦", message: message, preferredStyle: .alert)
        alart.addAction(UIAlertAction(title: "Ok", style: .default))
        present(alart, animated: true, completion: nil)
    }
}
