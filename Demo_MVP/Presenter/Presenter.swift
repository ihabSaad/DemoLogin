//
//  Presenter.swift
//  Demo_MVP
//
//  Created by ihab saad on 13/10/2023.
//

import Foundation

class Presenter {
    
     var view: SignInVcProtocol?
    
    init(view: SignInVcProtocol) {
        self.view = view
    }
  
}
