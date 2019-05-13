//
//  Treinador.swift
//  Coliseo
//
//  Created by Thiago B Claramunt on 06/05/19.
//  Copyright © 2019 Thiago B Claramunt. All rights reserved.
//

import Foundation

class Treinador {
    var nome: String
    var porcentagemAumento: Float
    var meuGladiador: Gladiador
    
    init(nome: String, porcentagemAumento: Float, meuGladiador: Gladiador) {
        self.nome = nome
        self.porcentagemAumento = porcentagemAumento
        self.meuGladiador = meuGladiador
    }
}
