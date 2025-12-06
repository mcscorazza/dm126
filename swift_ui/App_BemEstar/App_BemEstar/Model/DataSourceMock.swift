//
//  DataSourceMock.swift
//  App_BemEstar
//
//  Created by Marcos Corazza on 12/3/25.
//

import Foundation

let servicesMock:[ServiceType] = [
    ServiceType(id: 1, nome: "Exercitar", imagem: "exercicio"),
    ServiceType(id: 2, nome: "Meditar", imagem: "medit"),
    ServiceType(id: 3, nome: "Alongamento", imagem: "alongamento"),
    ServiceType(id: 4, nome: "Coffee Time", imagem: "coffee"),
    ServiceType(id: 5, nome: "Pausa 5min", imagem: "conversa"),
    ServiceType(id: 6, nome: "Nutricionista", imagem: "nutricionista")
]

let carouselMock:[ServiceType] = [
    ServiceType(id: 1, nome: "", imagem: "motivacional1"),
    ServiceType(id: 2, nome: "", imagem: "motivacional2"),
    ServiceType(id: 3, nome: "", imagem: "motivacional3")
]

let goalsMock:[GoalType] = [
    GoalType(id:1, icone: "moon.zzz.fill", titulo: "Descanso", descricao: "Dormir 8h por noite"),
    GoalType(id:2, icone: "hare.fill", titulo: "Exercicio", descricao: "Correr 5km duas vezes na semana"),
    GoalType(id:3, icone: "goforward.60", titulo: "Redes Sociais", descricao: "Usar o celular por apenas 1h"),
]

