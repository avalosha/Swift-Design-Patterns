//
//  ViewController.swift
//  DesignPatterns
//
//  Created by Álvaro Ávalos Hernández on 24/09/20.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //testFactoryMethod()
        testAbstractFactoryMethod()
    }

    func testFactoryMethod() {
        var payment: Payment
        payment = PaymentFactory.buildPayment(typePayment: .GOOGLE)
        payment.doPayment()
    }
    
    func testAbstractFactoryMethod() {
        PaymentMethodClient.codigoCliente(factory: MontlyGoogleFactory())
        PaymentMethodClient.codigoCliente(factory: PaymentInAdvanceCardFactory())
    }
}

