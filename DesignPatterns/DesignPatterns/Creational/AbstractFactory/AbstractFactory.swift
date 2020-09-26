//
//  AbstractFactory.swift
//  DesignPatterns
//
//  Created by Álvaro Ávalos Hernández on 25/09/20.
//

import Foundation

//Abstract Factory

protocol AbstractFactory {
    func createPayment() -> PaymentAF
    func createMethod() -> Method
}
