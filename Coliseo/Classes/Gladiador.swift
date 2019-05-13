//
//  Gladiador.swift
//  Coliseo
//
//  Created by Thiago B Claramunt on 06/05/19.
//  Copyright © 2019 Thiago B Claramunt. All rights reserved.
//

import Foundation

class Gladiador {
    var nome: String
    var vida: Float
    var ataque: Float
    var defesa: Float
    
    
    init(nome: String, vida: Float, ataque: Float, defesa: Float) {
        self.nome = nome
        self.vida = vida
        self.ataque = ataque
        self.defesa = defesa
    }
}
