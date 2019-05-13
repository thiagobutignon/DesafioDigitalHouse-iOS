//
//  Coliseu.swift
//  Coliseo
//
//  Created by Thiago B Claramunt on 06/05/19.
//  Copyright © 2019 Thiago B Claramunt. All rights reserved.
//

import Foundation

protocol CadastrarEntidades {
    func adicionarGladiador(gladiador: Gladiador) -> Void
    func adicionarTreinador(treinador: Treinador) -> Void
    func adicionarVendedor(vendedor: Vendedor) -> Void
}


class Coliseu: CadastrarEntidades {
    var listaGladiadores: [Gladiador] = []
    var listaTreinadores: [Treinador] = []
    var listaDeVendedores: [Vendedor] = []
    var vendasRealizadas: [Venda] = []
    
    func adicionarGladiador(gladiador: Gladiador) -> Void {
        listaGladiadores.append(gladiador)
    }
    
    func adicionarTreinador(treinador: Treinador) -> Void {
        listaTreinadores.append(treinador)
    }
    
    func adicionarVendedor(vendedor: Vendedor) -> Void {
        listaDeVendedores.append(vendedor)
    }
    
    
    public func comecarPreTemporada() -> Void {
        for value in listaTreinadores {
            var ataque = value.meuGladiador.ataque
            var vida: Float = value.meuGladiador.vida
            var defesa: Float = value.meuGladiador.defesa
            let aumento: Float = value.porcentagemAumento
            vida = (aumento/100) * vida + vida
            ataque = (aumento/100) * ataque + ataque
            defesa = (aumento/100) * defesa + defesa
            value.meuGladiador.vida = vida
            value.meuGladiador.ataque = ataque
            value.meuGladiador.defesa = defesa
        }
    }
    
    public func eliminarGladiador(nome: String) -> Void {
        let listaFiltrada: [Gladiador] = listaGladiadores.filter({$0.nome != nome})
        listaGladiadores = listaFiltrada
    }
    
    public func registroDeVendas(vendedor: Vendedor) -> Void {
        vendasRealizadas.append(contentsOf: vendedor.vendasRealizadas)
        vendedor.vendasRealizadas.removeAll()
    }
}
