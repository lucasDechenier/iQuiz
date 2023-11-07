//
//  Question.swift
//  iQuiz
//
//  Created by Lucas Dechenier on 06/11/23.
//

import Foundation


struct Question {
    var title: String
    var responses: [String]
    var correctResponse: Int
}

let questions: [Question] = [
    Question(title: "Qual feitiço para desarmar o seu oponente, em Harry Potter?", responses: ["Expecto Patronum", "Avada Kedavra", "Expelliarmus"], correctResponse: 2),
    Question(title: "Em que ano Vingadores Ultimato foi lançado?", responses: ["2019", "2018", "2017"], correctResponse: 0),
    Question(title: "Quando foi lançado o filme Avatar 2?", responses: ["2014", "2022", "2023"], correctResponse: 1),
    Question(title: "Qual é o primeiro filme da franquia Star Wars?", responses: ["Star Wars: A Ameaça Fantasma", "Star Wars: Uma Nova Esperança", "Star Wars: O Império Contra-Ataca"], correctResponse: 1),
    Question(title: "Qual é o primeiro filme do Universo Cinematográfico Marvel (MCU)?", responses: ["Homem de Ferro", "Capitão América: O Primeiro Vingador", "Thor"], correctResponse: 0),
    Question(title: "Qual é o personagem principal de The Office, interpretado por Steve Carell?", responses: ["Michael Scott", "Jim Halpert", "Dwight Schrute"], correctResponse: 0),
    Question(title: "Qual é o trabalho de Jay Pritchett na série Modern Family?", responses: ["Médico", "Empresário", "Advogado"], correctResponse: 1)
]
