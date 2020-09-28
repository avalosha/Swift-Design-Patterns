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
        ///Creational Patterns
        //testFactoryMethod()
        //testAbstractFactoryMethod()
        //testBuilderMethod()
        //testPrototype()
        //testSingleton()
        
        ///Behavioral Patterns
        //testChainOfResponsability()
        testStrategy()
    }
    
    // MARK:- Creational Patterns

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
    
    func testPrototype() {
        let original = VisaCard(cardNumber: 1111, cardType: "Credit")
        guard let copy = original.copy() as? VisaCard else {
            return
        }
        print(original.cardName)
        print(copy.cardName)
        
        print(original.cardNumber)
        print(copy.cardNumber)
    }
    
    func testSingleton() {
        let instancia1 = CardSingleton.shared
        let instancia2 = CardSingleton.shared
        
        if instancia1 === instancia2 {
            print("La 1 es igual que la 2")
        }
        
        instancia1.doSomething()
    }
    
    //MARK:- Behavioral Patters
    
    func testChainOfResponsability() {
        let bank = BankHandler()
        bank.creditCardRequest(totalLoan: 3000)
    }
    
    func testStrategy() {
        var context = Context(strategyTextFormatter: CapitalStrategyTextFormatter())
        context.publishText(text: "ejemplo en mayusculas")
        
        context = Context(strategyTextFormatter: LowerStrategyTextFormatter())
        context.publishText(text: "ejemplo en minusculas")
    }
}

