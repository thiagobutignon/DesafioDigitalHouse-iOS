//
//  main.swift
//  Coliseo
//
//  Created by Thiago B Claramunt on 06/05/19.
//  Copyright © 2019 Thiago B Claramunt. All rights reserved.
//

import Foundation
// Instância dos gladiadores
var gladiador: Gladiador = Gladiador(nome: "Thiago", vida: 13, ataque: 31, defesa: 32)
var gladiador1: Gladiador = Gladiador(nome: "Bruno", vida: 13, ataque: 31, defesa: 32)

// Instância dos Treinadores
var treinador: Treinador = Treinador(nome: "Anita", porcentagemAumento: 10, meuGladiador: gladiador)
var treinador1: Treinador = Treinador(nome: "Samuel", porcentagemAumento: 2, meuGladiador: gladiador1)

// Instância dos Vendedores
var vendedor1: Vendedor = Vendedor(nomeVendedor: "Thiago")
var vendedor2: Vendedor = Vendedor(nomeVendedor: "Anita")

// Instância do Coliseu
var coliseu: Coliseu = Coliseu()

// Adicionando Gladiadores ao Coliseu
coliseu.adicionarGladiador(gladiador: gladiador)
coliseu.adicionarGladiador(gladiador: gladiador1)

coliseu.adicionarTreinador(treinador: treinador)
coliseu.adicionarTreinador(treinador: treinador1)


// Atribuindo gladiador ao treinador através do uso de ids e foreignKeys
coliseu.comecarPreTemporada()
print(gladiador.ataque)
dump(treinador.meuGladiador.ataque)
coliseu.comecarPreTemporada()
print(coliseu.listaGladiadores)

// Eliminando um Gladiador pelo Nome
coliseu.eliminarGladiador(nome: "Bruno")
dump(coliseu.listaGladiadores)

// Adicionando Vendedor ao coliseu
coliseu.adicionarVendedor(vendedor: vendedor1)
coliseu.adicionarVendedor(vendedor: vendedor2)
print(coliseu.listaDeVendedores)

// Criando Produto
var produto1: Produto = Produto(nome: "Salmãp", preco: 10)
var produto2: Produto = Produto(nome: "Picanha", preco: 20)

// Adicionando produtos aos vendedores
vendedor1.adicionarProduto(produto: produto1)
vendedor1.adicionarProduto(produto: produto2)

// Mostrando lista de Produtos
print(vendedor1.listaDeProdutos)

// Registrando algumas vendas ao vendedor
vendedor1.registroDeVendas(vendedor: vendedor1, produto: produto1)
vendedor1.registroDeVendas(vendedor: vendedor1, produto: produto2)
vendedor1.registroDeVendas(vendedor: vendedor1, produto: produto1)
print(vendedor1.vendasRealizadas)

// Adicionando o registro de vendas do vendedor ao Coliseu e realizando a exclusão de sua lista
coliseu.registroDeVendas(vendedor: vendedor1)

// Mostrando as vendas realizadas
print(coliseu.vendasRealizadas)

// Mostrando lista em branco do vendor após o fim do dia
print(vendedor1.vendasRealizadas)
