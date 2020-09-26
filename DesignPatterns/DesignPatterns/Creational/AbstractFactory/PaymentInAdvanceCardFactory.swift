//
//  PaymentInAdvanceCardFactory.swift
//  DesignPatterns
//
//  Created by Álvaro Ávalos Hernández on 25/09/20.
//

import Foundation

//Concrete Factory 1

class PaymentInAdvanceCardFactory: AbstractFactory {
    func createPayment() -> PaymentAF {
        return CardPaymentAF()
    }
    
    func createMethod() -> Method {
        return PaymentInAdvanceMethod()
    }
}
