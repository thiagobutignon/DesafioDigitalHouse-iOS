//
//  Vendedor.swift
//  Coliseo
//
//  Created by Thiago B Claramunt on 08/05/19.
//  Copyright © 2019 Thiago B Claramunt. All rights reserved.
//

import Foundation

class Vendedor {
    var nomeVendedor: String
    var produto: String = ""
    var preco: Int = 0
    var listaDeProdutos: [Produto] = []
    var vendasRealizadas: [Venda] = []
    
    init(nomeVendedor: String) {
        self.nomeVendedor = nomeVendedor
    }
    
    func adicionarProduto(produto: Produto) {
        listaDeProdutos.append(produto)
    }
    
    public func registroDeVendas(vendedor: Vendedor, produto: Produto) -> Void {
        vendasRealizadas.append(Venda.init(vendedor: vendedor, produto: produto))
    }
}
