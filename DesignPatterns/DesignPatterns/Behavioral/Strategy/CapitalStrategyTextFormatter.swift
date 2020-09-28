//
//  CapitalStrategyTextFormatter.swift
//  DesignPatterns
//
//  Created by Álvaro Ávalos Hernández on 27/09/20.
//

import Foundation

///Strategy 1

class CapitalStrategyTextFormatter: StrategyTextFormatter {
    
    func format(text: String) {
        print("Texto en Mayusculas: \(text.uppercased())")
    }
    
}
