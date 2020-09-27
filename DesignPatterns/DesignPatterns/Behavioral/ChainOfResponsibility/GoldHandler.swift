//
//  GoldHandler.swift
//  DesignPatterns
//
//  Created by Álvaro Ávalos Hernández on 27/09/20.
//

import Foundation

//Concrete Handler 1

class GoldHandler: ApprovedLoanHandler {
    
    private var next: ApprovedLoanHandler?
    
    func setNext(handler: ApprovedLoanHandler) {
        next = handler
    }
    
    func getNext() -> ApprovedLoanHandler {
        return next!
    }
    
    func creditCardRequest(totalLoan: Int) {
        if totalLoan <= 10000 {
            print("Solicitud tarjeta Gold")
        } else {
            next!.creditCardRequest(totalLoan: totalLoan)
        }
    }
    
}
