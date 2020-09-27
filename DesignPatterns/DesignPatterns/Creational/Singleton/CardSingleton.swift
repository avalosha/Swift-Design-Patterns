//
//  CardSingleton.swift
//  DesignPatterns
//
//  Created by Álvaro Ávalos Hernández on 26/09/20.
//

import Foundation

class CardSingleton {
    static var shared = CardSingleton()
    private init(){}
    
    func doSomething() {
        print("Haciendo trabajo de la clase Singleton")
    }
}
