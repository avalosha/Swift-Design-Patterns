//
//  Context.swift
//  DesignPatterns
//
//  Created by Álvaro Ávalos Hernández on 27/09/20.
//

import Foundation

///Context

class Context {
    
    var strategyTextFormatter: StrategyTextFormatter
    
    init(strategyTextFormatter: StrategyTextFormatter) {
        self.strategyTextFormatter = strategyTextFormatter
    }
    
    func publishText(text: String) {
        strategyTextFormatter.format(text: text)
    }
}
