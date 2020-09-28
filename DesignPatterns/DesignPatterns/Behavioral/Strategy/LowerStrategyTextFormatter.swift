//
//  LowerStrategyTextFormatter.swift
//  DesignPatterns
//
//  Created by Álvaro Ávalos Hernández on 27/09/20.
//

import Foundation

///Strategy 2

class LowerStrategyTextFormatter: StrategyTextFormatter {
    
    func format(text: String) {
        print("Texto en Minusculas: \(text.lowercased())")
    }
    
}
