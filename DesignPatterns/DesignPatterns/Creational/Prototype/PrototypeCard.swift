//
//  PrototypeCard.swift
//  DesignPatterns
//
//  Created by Álvaro Ávalos Hernández on 26/09/20.
//

import Foundation

//Prototype
//Reduce la complejidad de crear objetos, en especial en tiempo de ejecución

class PrototypeCard: NSCopying {
    var cardNumber = 0
    var cardType = ""
    
    required init(cardNumber: Int = 0, cardType: String = "")  {
        self.cardNumber = cardNumber
        self.cardType = cardType
    }
    
    //Clonado del objeto
    func copy(with zone: NSZone? = nil) -> Any {
        let prototype = type(of: self).init()
        prototype.cardNumber = cardNumber
        prototype.cardType = cardType
        print("Los valores de la clase PrototypeCard han sido clonados")
        return prototype
    }
}
