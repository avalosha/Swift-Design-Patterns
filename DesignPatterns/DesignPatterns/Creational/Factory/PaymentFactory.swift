//
//  PaymentFactory.swift
//  DesignPatterns
//
//  Created by Álvaro Ávalos Hernández on 24/09/20.
//

import Foundation

//Creator
//Se declara el factoryMethod() que devuelve el producto concreto

class PaymentFactory {
    static func buildPayment(typePayment: TypePayment) -> Payment {
        switch typePayment {
        case .GOOGLE:
            return GooglePayment()
        case .CARD:
            return CardPayment()
        }
    }
}
