//
//  OperationAdaptee.swift
//  DesignPatterns
//
//  Created by Álvaro Ávalos Hernández on 28/09/20.
//

import Foundation

class OperationAdaptee {
    var a: Int
    var b: Int
    
    init(a: Int, b: Int) {
        self.a = a
        self.b = b
    }
    
    func sum() -> Int {
        return a + b
    }
}
