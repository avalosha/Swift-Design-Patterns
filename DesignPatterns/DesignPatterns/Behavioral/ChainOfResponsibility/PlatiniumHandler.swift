//
//  PlatiniumHandler.swift
//  DesignPatterns
//
//  Created by Álvaro Ávalos Hernández on 27/09/20.
//

import Foundation

//Concrete Handler 2

class PlatiniumHandler: ApprovedLoanHandler {
    
    private var next: ApprovedLoanHandler?
    
    func setNext(handler: ApprovedLoanHandler) {
        next = handler
    }
    
    func getNext() -> ApprovedLoanHandler {
        return next!
    }
    
    func creditCardRequest(totalLoan: Int) {
        if totalLoan > 10000 && totalLoan <= 50000 {
            print("Solicitud tarjeta Platinium")
        } else {
            next!.creditCardRequest(totalLoan: totalLoan)
        }
    }
    
}
