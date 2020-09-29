//
//  OperationAdapter.swift
//  DesignPatterns
//
//  Created by Álvaro Ávalos Hernández on 28/09/20.
//

import Foundation

class OperationAdapter: OperationTarget {
    
    let adaptee: OperationAdaptee
    
    var getSum: String {
        return String(adaptee.sum())
    }
    
    init(adaptee: OperationAdaptee) {
        self.adaptee = adaptee
    }
    
    
}
