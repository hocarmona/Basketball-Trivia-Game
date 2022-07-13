//
//  K.swift
//  NBA Quiz
//
//  Created by Hector Carmona on 7/4/22.
//

import Foundation

//Struct that contains only String constants that are correct answers to avoid errors when comparing

struct K {
    
    //Answers
    
    static let stephenCurry = "Stephen Curry"
    static let billRussell = "Bill Russell"
    static let wiltChamberlain = "Wilt Chamberlain"
    static let warriors = "Golden State Warriors"
    static let kareemAbdul = "Kareem Abdul-jabbar"
    static let derrickRose = "Derrick Rose"
    static let kings = "Sacramento Kings"
    static let raptors = "Raptors"
    static let rangers = "Rangers"
    static let klayThompson = "Klay Thompson"
    static let dirkNowitzki = "Dirk Nowitzki"
    static let miamiHeat = "Miami Heat"
    static let kobeBryantPoints = "60"
    
    
    // Questions
    
    static let questionsList = [
        QuestionsModel(q: "Player with most history 3 Pointers made", o: ["Lebron James", stephenCurry, "Michael Jordan", "Ray Allen"], a: stephenCurry),
        QuestionsModel(q: "Player with most history championships", o: [billRussell, "Kareem Abdul-Jabbar", "Magic Johnson", "Michael Jordan"], a: billRussell),
        QuestionsModel(q: "Most points in a single game", o: ["Kobe Bryant", "Michael Jordan", "Shaquille O'Neal", wiltChamberlain], a: wiltChamberlain),
        QuestionsModel(q: "Team with most wins in a regular season", o: [warriors, "Chicago Bulls", "LA Lakers", "SA Spurs"], a: warriors),
        QuestionsModel(q: "Player with most career MVP awards", o: ["Michael Jordan", kareemAbdul, "LeBron James", "Larry Bird"], a: kareemAbdul),
        QuestionsModel(q: "Youngest MVP in regular season", o: ["Lebron James", "Moses Malone", derrickRose, "Kevin Durant"], a: derrickRose),
        QuestionsModel(q: "Oldest NBA team active", o: ["LA Lakers", "Philadelphia Sixers", "Boston Celtics", kings], a: kings),
        QuestionsModel(q: "Only No-USA team", o: ["Timberwolves", raptors, "Pelicans", "Grizzlies"], a: raptors),
        QuestionsModel(q: "Which was not a NBA team", o: ["The original Bullets", rangers, "Supersonics", "Olympians"], a: rangers),
        QuestionsModel(q: "Player with highest score single quarter", o: ["Kobe Bryant", "Allen Iverson", "Wilt Chamberlain", klayThompson], a: klayThompson),
        QuestionsModel(q: "European NBA player with most all-time points", o: [dirkNowitzki, "Pau Gasol", "Tony Parker", "Giannis", "Giannis Antetokounmpo"], a: dirkNowitzki),
        QuestionsModel(q: "Which Eastern conference team used to play in Western Conference", o: [K.miamiHeat, "Indiana Pacers", "Orlando Magic", "Milwaukee Bucks"], a: K.miamiHeat),
        QuestionsModel(q: "Kobe Bryant made points in his last career game", o: ["55", "65", "48", K.kobeBryantPoints], a: K.kobeBryantPoints)
        ]
    
    // Segues
    
    static let goToQuestions = "goToQuestions"
    static let goToResult = "goToResult"
    static let goToMenu = "goToMenu"
    static let goBackToMenu = "goBackToMenu"
        
    }
