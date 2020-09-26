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
        //testAbstractFactoryMethod()
        testBuilderMethod()
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
    
    func testBuilderMethod() {
        let card: Card = Card.CardBuilder()
            .cardType(cardType: "VISA")
            .build()
        card.showCard()
        
        let cardTwo: Card = Card.CardBuilder()
            .cardType(cardType: "MASTER CARD")
            .number(number: "1111 2222 3333 4444")
            .expires(expires: 2030)
            .build()
        cardTwo.showCard()
    }
}

