//
//  SignInVc.swift
//  Demo_MVP
//
//  Created by ihab saad on 12/10/2023.
//

import UIKit


protocol SignInVcProtocol {
     func isDataEnterdNotSpace() -> Bool
     func isDataVaild()
}

class SignInVc: UIViewController {

    
    @IBOutlet weak var EmailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var buttonLogin: UIButton!
    
    lazy var presenter : Presenter = Presenter(view: self)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonLogin.layer.cornerRadius = 8

//        let homeVc = HomeVc(nibName: "HomeVc", bundle: nil)
//        self.present(homeVc, animated: true)
    }
    
    @IBAction func goToHomeVc(_ sender: Any) {
        if isDataEnterdNotSpace() {
          isDataVaild()
        }
    }
    
}


extension SignInVc : SignInVcProtocol {
  
    
    func isDataEnterdNotSpace() -> Bool {
        guard EmailTextField.text?.trimed != "" else {
            showAlart(message: "please, write your EmailNot' Spaace" )
            return false
        }
        guard passwordTextField.text?.trimed != "" else {
            showAlart(message: "please, write your Password Not' Spaace ")
            return false
            }
             return true
    }
                      
    
    func isDataVaild() {
        guard Validtor.shard.isValidEmail(email: EmailTextField.text!) else {
            showAlart(message: "Enter Vaild Exmaple: Email@exmaple.com")
            return
        }
        guard Validtor.shard.isValidPassword(password: passwordTextField.text!) else {
            showAlart(message: ("Please, Enter Vaild Password. Example: Aa123456"))
            return
        }
        PresentHomeVc()
    }
    
    func PresentHomeVc(){
        let mainStoryBord: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
      let homeVc: HomeVc = mainStoryBord.instantiateViewController(identifier: "HomeVc") as! HomeVc
      navigationController?.pushViewController(homeVc, animated: true)
    }
    
    
}
