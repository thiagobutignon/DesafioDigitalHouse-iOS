//
//  Venda.swift
//  Coliseo
//
//  Created by Thiago B Claramunt on 08/05/19.
//  Copyright © 2019 Thiago B Claramunt. All rights reserved.
//

import Foundation

class Venda {
    var vendedor: Vendedor
    var produto: Produto
    var data: Date = Date()
    
    init(vendedor: Vendedor, produto: Produto) {
        self.vendedor = vendedor
        self.produto = produto
    }
}
