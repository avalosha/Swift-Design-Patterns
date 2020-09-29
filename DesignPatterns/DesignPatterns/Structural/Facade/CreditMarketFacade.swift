//
//  CreditMarketFacade.swift
//  DesignPatterns
//
//  Created by Álvaro Ávalos Hernández on 28/09/20.
//

import Foundation

///Facade: oculta la dificultad al cliente y con esto solo le muestra una interfaz sencilla

class CreditMarketFacade {
    
    var black = BlackModule()
    var gold = GoldModule()
    var silver = SilverModule()
    
    func showCreditBlack() {
        black.showCredit()
    }
    
    func showCreditGold() {
        gold.showCredit()
    }
    
    func showCreditSilver() {
        silver.showCredit()
    }
}
