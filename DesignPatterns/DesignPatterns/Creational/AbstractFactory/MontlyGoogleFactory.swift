//
//  MontlyGoogleFactory.swift
//  DesignPatterns
//
//  Created by Álvaro Ávalos Hernández on 25/09/20.
//

import Foundation

//Concrete Factory 2

class MontlyGoogleFactory: AbstractFactory {
    func createPayment() -> PaymentAF {
        return GooglePaymentAF()
    }
    
    func createMethod() -> Method {
        return MontlyMethod()
    }
}
