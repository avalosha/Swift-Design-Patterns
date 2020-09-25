//
//  CardPayment.swift
//  DesignPatterns
//
//  Created by Álvaro Ávalos Hernández on 24/09/20.
//

import Foundation

//Concret Product 2
//Clase o estructura que se ajusta al protocolo del Producto.

class CardPayment: Payment {
    func doPayment() {
        print("Haciendo el pago con Tarjeta de Crédito")
    }
}
