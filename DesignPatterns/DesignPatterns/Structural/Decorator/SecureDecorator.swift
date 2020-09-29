//
//  SecureDecorator.swift
//  DesignPatterns
//
//  Created by Álvaro Ávalos Hernández on 28/09/20.
//

import Foundation

class SecureDecorator: CreditDecorator {
    
    override init(decorated: CreditComponent) {
        super.init(decorated: decorated)
    }
    
    override func showCredit() {
        decorated.showCredit()
        configSecure()
    }
    
    func configSecure() {
        print("Tarjeta configurada con pago seguro")
    }
}
