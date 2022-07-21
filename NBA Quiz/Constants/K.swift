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
    static let jerryWest = "Jerry West"
    static let tracyMcG = "Tracy  McGrady"
    static let joseCalderon = "Jose Calderon"
    static let tripleDouble = "42 / R. Westbrook"
    static let threePeat = "LA Lakers"
    static let noRingPlayer = "Charles Barkley"
    static let theAnswer = "Allen Iverson"
    static let anythingPossible = "Kevin Garnett"
    static let jordanRetired = "Wizards"
    static let theTruth = "Paul Pierce"
    static let finalsMvp = "Lebron James"
    static let staplesCenter = "Staples center"
    static let docRiversTeams = "Celtics"
    static let lebronBackCleveland = "2014"
    static let lebronNoTeam = "Knicks"
    static let cavsBackOnFinals = "Cavaliers"
    static let blackMamba = "Black Mamba"
    static let diesel = "Shaquille O'Neal"
    static let jordanPick = "#3 Overall"
    static let kobeDraft = "Charlotte Hornets"
    static let sameHospital = "L. James/S. Curry"
    static let miamiMVP = "D. Wade"
    static let kobeBorn = "Philadelphia, PA"
    static let steveNash = "Steve Nash"
    static let laLakersDisney = "LA Lakers"
    static let mJordan = "Michael Jordan"
    static let badBoys = "Detroit Pistons"
    static let theWorm = "Dennis Rodman"
    static let kobeRings = "5"
    static let lukaNationality = "Slovenia"
    static let superSonics = "Seattle"
    static let kyrieIRving = "Kyrie Irving"
    static let manuGinobili = "Manu Ginobili"
    
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
        QuestionsModel(q: "How many points Kobe Bryant scored in his career final game?", o: ["55", "65", "48", K.kobeBryantPoints], a: K.kobeBryantPoints),
        QuestionsModel(q: "Player who won Finals MVP despiste being on the losing team.", o: [K.jerryWest, "LeBron James", "Allen Iverson", "No one"], a: K.jerryWest),
        QuestionsModel(q: "Which player is not part of the 75th Anniversaty Team.", o: ["Anthony Davis", K.tracyMcG, "Hal Greer", "Willis Reed"], a: K.tracyMcG),
        QuestionsModel(q: "Player with highest aingle season individual free throw percentage", o: ["Stephen Curry", "Ray Allen", K.joseCalderon, "Steve Nash"], a: K.joseCalderon),
        QuestionsModel(q: "Most triple doubles in a regular season", o: [K.tripleDouble, "41 / O. Robertson", "44 / L. James", "43 / M. Jordan"], a: K.tripleDouble),
        QuestionsModel(q: "Which of these teams have a three-peat?", o: ["GS Warriors", K.threePeat, "Miami Heat", "SA spurs"], a: K.threePeat),
        QuestionsModel(q: "Which of the following players does not has a ring", o: ["Jason Kidd", "Dirk Nowitzki", K.noRingPlayer, "Matt Barnes"], a: K.noRingPlayer),
        QuestionsModel(q: "Which player is known by his nickname \"The Answer\"" , o: ["Kevin Garnett", "Dennis Rodman", K.theAnswer, "Dwyane Wade"], a: K.theAnswer),
        QuestionsModel(q: "Player who scream \"Anythins is possible\" during an interview", o: ["Lebron James", "Kobe Bryant", "Shaquille O'neal", K.anythingPossible], a: K.anythingPossible),
        QuestionsModel(q: "Where did Michael Jordan retired?", o: [K.jordanRetired, "Boston Celtics", "Chicago Bulls", "LA Lakers"], a: K.jordanRetired),
        QuestionsModel(q: "Which player is known by his nickname \"The truth\"", o: ["Larry Bird", K.theTruth, "Vince Carter", "Steve Nash"], a: K.theTruth),
        QuestionsModel(q: "First player to win NBA finals MVP with 3 different teams", o: ["Michael Jordan", "Bill Russell", K.finalsMvp, "Shaquille O'Neal"], a: K.finalsMvp),
        QuestionsModel(q: "What is the old name of the crypto.com arena", o: ["LA Arena", "State Farm Center", "Microsoft Arena", K.staplesCenter], a: K.staplesCenter),
        QuestionsModel(q: "Which is the first team where Doc rivers got his first championship", o: [K.docRiversTeams, "Sixers", "Knicks", "Clippers"], a: K.docRiversTeams),
        QuestionsModel(q: "Which season did LeBeon James came back to Cleveland", o: ["2013",K.lebronBackCleveland, "2015", "2012"], a: K.lebronBackCleveland),
        QuestionsModel(q: "Team where LeBron James haven't played", o: ["Heat", "Lakers", K.lebronNoTeam, "Cavaliers"], a: K.lebronNoTeam),
        QuestionsModel(q: "First team to win the NBA Finals after losing the series 3-1", o: ["SA spurs", "Pistons", "GS Warriors", K.cavsBackOnFinals], a: K.cavsBackOnFinals),
        QuestionsModel(q: "Kobe Bryant nickname", o: [K.blackMamba, "The Wine", "Big Ticket", "The Show"], a: K.blackMamba),
        QuestionsModel(q: "Which player is called \"Diesel\"?", o: ["D. Howard", K.diesel, "Yao Ming", "H Olajuwon"], a: K.diesel),
        QuestionsModel(q: "What pick number was Michael Jordan Selected?", o: ["#4 Overall", "#1 Overall", K.jordanPick, "#8 Overall"], a: K.jordanPick),
        QuestionsModel(q: "Which team selected Kobe Bryant in the NBA draft?", o: ["HOU Rockets", "LA Lakers", "PHI Sixers", K.kobeDraft], a: K.kobeDraft),
        QuestionsModel(q: "Players who were born in the same hospital", o: [K.sameHospital, "K. Durant/K Bryant", "M. Jordan/A. Iverson", "R. Allen/"], a: K.sameHospital),
        QuestionsModel(q: "2006 NBA Finals MVP between Heat and Mavericks ", o: ["D. Nowitzki", K.miamiMVP, "S. O'Neal", "G. Payton"], a: K.miamiMVP),
        QuestionsModel(q: "Where was Kobe Bryant Born?", o: ["Los Angeles, CA", "Brooklyn, NY", K.kobeBorn, "Charlotte, NC"], a: K.kobeBorn),
        QuestionsModel(q: "First foreign NBA player to win back-to-back regular season MVP award ", o: ["Dirk Nowitzki", "N. Jokic", "G. Antetokounmpo", K.steveNash], a: K.steveNash),
        QuestionsModel(q: "Which team won the NBA Championship played at Disneyland bubble?", o: [K.laLakersDisney, "Miami Heat", "Denver Nuggets", "GS Warriors"], a: K.laLakersDisney),
        QuestionsModel(q: "Player who was involved in 2 three-peat championships and won all the finals MVP", o: ["Bill Russell", K.mJordan, "LeBron James", "S. O'Neal"], a: K.mJordan),
        QuestionsModel(q: "From which team are the \"Bad boys\"?", o: ["PHI Sixers", "Idiana Pacers", K.badBoys, "Boston Celtics"], a: K.badBoys),
        QuestionsModel(q: "Who is \"The worm\"?", o: ["Yao Ming", "Ron Artest", "Kevin Durant", K.theWorm], a: K.theWorm),
        QuestionsModel(q: "How many rings does Kobe Bryant won?", o: [K.kobeRings, "6", "4", "7"], a: K.kobeRings),
        QuestionsModel(q: "What's Luka Doncic nationality?", o: ["Serbia", K.lukaNationality, "Turkey", "Lithuania"], a: K.lukaNationality),
        QuestionsModel(q: "From which city used to be the supersonics?", o: ["Las Vegas", "TampaBay", K.superSonics, "San Diego"], a: K.superSonics),
        QuestionsModel(q: "Who made the 3-pointer dagger shot in game 7 of the 2016 NBA Finals", o: ["LeBron James", "Steph Curry", "Kevin Durant", K.kyrieIRving ], a: K.kyrieIRving),
        QuestionsModel(q: "Only Latino Player to be part of the NBA Hall Of Fame", o: [K.manuGinobili, "Al Horford", "JJ. Barea", "Luis Scola"], a: K.manuGinobili)
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
