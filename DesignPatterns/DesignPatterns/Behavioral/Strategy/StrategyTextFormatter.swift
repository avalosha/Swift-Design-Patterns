//
//  StrategyTextFormat.swift
//  DesignPatterns
//
//  Created by Álvaro Ávalos Hernández on 27/09/20.
//

import Foundation

///Strategy
///Contiene todos los algoritmos disponibles

protocol StrategyTextFormatter {
    func format(text: String)
}
