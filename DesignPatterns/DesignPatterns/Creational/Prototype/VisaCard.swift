//
//  VisaCard.swift
//  DesignPatterns
//
//  Created by Álvaro Ávalos Hernández on 26/09/20.
//

import Foundation

//Concret Prototype 1

class VisaCard: PrototypeCard {
    var cardName = "Visa"
    
    //Manda a llamar el copy del PrototypeCard
    func copy() -> Any {
        return copy(with: nil)
    }
    
    override func copy(with zone: NSZone? = nil) -> Any {
        guard let prototype = super.copy(with: zone) as? VisaCard else {
            return VisaCard()
        }
        prototype.cardName = cardName
        print("Clonado tarjeta Visa")
        return prototype
    }
}
