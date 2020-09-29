//
//  InternationalPaymentDecorator.swift
//  DesignPatterns
//
//  Created by Álvaro Ávalos Hernández on 28/09/20.
//

import Foundation

class InternationalPaymentDecorator: CreditDecorator {
    
    override init(decorated: CreditComponent) {
        super.init(decorated: decorated)
    }
    
    override func showCredit() {
        decorated.showCredit()
        configInternationalPayment()
    }
    
    func configInternationalPayment() {
        print("Tarjeta configurada con pago internacional")
    }
}
