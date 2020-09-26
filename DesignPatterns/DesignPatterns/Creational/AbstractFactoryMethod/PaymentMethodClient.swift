//
//  PaymentMethodClient.swift
//  DesignPatterns
//
//  Created by Álvaro Ávalos Hernández on 25/09/20.
//

import Foundation

//Cliente

class PaymentMethodClient {
    static func codigoCliente(factory: AbstractFactory) {
        let payment = factory.createPayment()
        let method = factory.createMethod()
        
        payment.doPayment()
        method.calculatePayment()
    }
}
