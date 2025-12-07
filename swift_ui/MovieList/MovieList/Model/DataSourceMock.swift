//
//  DataSourceMock.swift
//  MovieList
//
//  Created by user288580 on 12/6/25.
//

import Foundation

let moviesMock: [MovieType] = [
    // --- AÇÃO (8 Filmes) ---
    MovieType(id: 1, image: "john_wick", title: "John Wick 4", year: 2023, genre: "Ação"),
    MovieType(id: 2, image: "missao_impossivel", title: "Missão Impossível 7", year: 2023, genre: "Ação"),
    MovieType(id: 3, image: "resgate", title: "O Resgate 2", year: 2023, genre: "Ação"),
    MovieType(id: 4, image: "top_gun", title: "Top Gun: Maverick", year: 2022, genre: "Ação"),
    MovieType(id: 5, image: "batman", title: "The Batman", year: 2022, genre: "Ação"),
    MovieType(id: 6, image: "velozes", title: "Velozes e Furiosos 10", year: 2023, genre: "Ação"),
    MovieType(id: 7, image: "pantera", title: "Pantera Negra", year: 2022, genre: "Ação"),
    MovieType(id: 8, image: "avatar", title: "Avatar: O Caminho da Água", year: 2022, genre: "Ação"),

    // --- COMÉDIA (8 Filmes) ---
    MovieType(id: 9, image: "barbie", title: "Barbie", year: 2023, genre: "Comédia"),
    MovieType(id: 10, image: "minha_mae", title: "Minha Mãe é uma Peça 3", year: 2019, genre: "Comédia"),
    MovieType(id: 11, image: "auto_compadecida", title: "O Auto da Compadecida 2", year: 2024, genre: "Comédia"),
    MovieType(id: 12, image: "misterio", title: "Mistério em Paris", year: 2023, genre: "Comédia"),
    MovieType(id: 13, image: "super_mario", title: "Super Mario Bros", year: 2023, genre: "Comédia"),
    MovieType(id: 14, image: "jumanji", title: "Jumanji: Próxima Fase", year: 2019, genre: "Comédia"),
    MovieType(id: 15, image: "free_guy", title: "Free Guy", year: 2021, genre: "Comédia"),
    MovieType(id: 16, image: "cruella", title: "Cruella", year: 2021, genre: "Comédia"),

    // --- DRAMA (8 Filmes) ---
    MovieType(id: 17, image: "oppenheimer", title: "Oppenheimer", year: 2023, genre: "Drama"),
    MovieType(id: 18, image: "baleia", title: "A Baleia", year: 2022, genre: "Drama"),
    MovieType(id: 19, image: "elvis", title: "Elvis", year: 2022, genre: "Drama"),
    MovieType(id: 20, image: "tudo_em_todo_lugar", title: "Tudo em Todo Lugar", year: 2022, genre: "Drama"),
    MovieType(id: 21, image: "assassinos_lua", title: "Assassinos da Lua das Flores", year: 2023, genre: "Drama"),
    MovieType(id: 22, image: "maestro", title: "Maestro", year: 2023, genre: "Drama"),
    MovieType(id: 23, image: "napoleao", title: "Napoleão", year: 2023, genre: "Drama"),
    MovieType(id: 24, image: "ferrari", title: "Ferrari", year: 2024, genre: "Drama")
]


let highlightsMock: [MovieType] = [
    MovieType(id: 101, image: "h_dragao", title: "Como Treinar o Seu Dragão", year: 2025, genre: "Aventura"),
    MovieType(id: 102, image: "h_duna2", title: "Duna: Parte 2", year: 2024, genre: "Ficção"),
    MovieType(id: 103, image: "h_divertidamente", title: "Divertida Mente 2", year: 2024, genre: "Animação"),
    MovieType(id: 104, image: "h_furiosa", title: "Furiosa: Mad Max", year: 2024, genre: "Ação"),
    MovieType(id: 105, image: "h_coringa", title: "Coringa: Delírio a Dois", year: 2024, genre: "Drama"),
    MovieType(id: 106, image: "h_godzilla", title: "Godzilla e Kong", year: 2024, genre: "Ação"),
    MovieType(id: 107, image: "h_deadpool", title: "Deadpool & Wolverine", year: 2024, genre: "Comédia"),
    MovieType(id: 108, image: "h_planeta", title: "Planeta dos Macacos", year: 2024, genre: "Aventura"),
    MovieType(id: 109, image: "h_gladiador2", title: "Gladiador 2", year: 2024, genre: "Épico"),
    MovieType(id: 110, image: "h_mickey", title: "Mickey 17", year: 2025, genre: "Ficção")
]

let wishListMock: [MovieType] = [
    MovieType(id: 1, image: "h_deadpool", title: "Deadpool & Wolverine", year: 2024, genre: "Comédia"),
    MovieType(id: 2, image: "h_mickey", title: "Mickey 17", year: 2025, genre: "Ficção"),
    MovieType(id: 3, image: "h_divertidamente", title: "Divertida Mente 2", year: 2024, genre: "Animação"),
    MovieType(id: 4, image: "h_coringa", title: "Coringa: Delírio a Dois", year: 2024, genre: "Drama"),
    MovieType(id: 5, image: "h_duna2", title: "Duna: Parte 2", year: 2024, genre: "Ficção"),
]
