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
        QuestionsModel(q: "Player with most 3-Pointers made all time.", o: [stephenCurry, "Lebron James", "Michael Jordan", "Ray Allen"], a: stephenCurry),
        QuestionsModel(q: "Player with most NBA championships rings.", o: ["Kareem Abdul-Jabbar", billRussell, "Magic Johnson", "Michael Jordan"], a: billRussell),
        QuestionsModel(q: "Player with Most points in a single game", o: ["Kobe Bryant", "Michael Jordan", wiltChamberlain, "Shaquille O'Neal"], a: wiltChamberlain),
        QuestionsModel(q: "Team with the most regular season wins.", o: ["Chicago Bulls", "LA Lakers", "SA Spurs", warriors], a: warriors),
        QuestionsModel(q: "Player with most regular season MVP awards", o: [kareemAbdul, "Michael Jordan", "LeBron James", "Larry Bird"], a: kareemAbdul),
        QuestionsModel(q: "Youngest player with all time regular season MVP.", o: ["Lebron James", derrickRose, "Moses Malone", "Kevin Durant"], a: derrickRose),
        QuestionsModel(q: "Oldest NBA team active", o: ["LA Lakers", "Philadelphia Sixers", kings, "Boston Celtics"], a: kings),
        QuestionsModel(q: "Only Not American NBA team.", o: ["Timberwolves", "Pelicans", "Grizzlies", raptors], a: raptors),
        QuestionsModel(q: "Which of the following was never a NBA team.", o: [rangers, "The original Bullets", "Supersonics", "Olympians"], a: rangers),
        QuestionsModel(q: "Player with all time highest score in a single quarter", o: ["Kobe Bryant", klayThompson, "Allen Iverson", "Wilt Chamberlain"], a: klayThompson),
        QuestionsModel(q: "European NBA player with most all-time career points", o: ["Pau Gasol", "Tony Parker", dirkNowitzki, "G. Antetokounmpo"], a: dirkNowitzki),
        QuestionsModel(q: "Which current Eastern conference team used to play in Western Conference", o: ["Indiana Pacers", "Orlando Magic", "Milwaukee Bucks", K.miamiHeat], a: K.miamiHeat),
        QuestionsModel(q: "How many points Kobe Bryant scored in his career final game?", o: ["55", "65", "48", K.kobeBryantPoints], a: K.kobeBryantPoints)
        ]
    
    // Segues
    
    static let goToQuestions = "goToQuestions"
    static let goToResult = "goToResult"
    static let goToMenu = "goToMenu"
    static let goBackToMenu = "goBackToMenu"
        
    // resultLabels
    
    static let workHarder = "Work harder next time"
    static let notBad = "Not bad"
    static let goodJob = "Good job!"
    static let perfect = "Perfect!!"
    
    //Type of conffeti
    
    static let sadFace = "sadFace"
    static let basketBall = "bbback"
    static let star = "star"
    static let conffeti = "conffeti"
    
    }
