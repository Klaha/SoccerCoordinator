// Variables

var experiencedPlayers: [[String: String]] = []
var inexperiencedPlayers: [[String: String]] = []

// Creating Teams

var dragons: [[String: String]] = []
var sharks: [[String: String]] = []
var raptors: [[String: String]] = []

// Ordered Players

var heightOrderedExperiencedPlayers: [[String: String]] = []
var heightOrderedInexperiencedPlayers: [[String: String]] = []
var orderedLeague: [[String: String]] = []

// Players

let joeSmith: [String: String] = [
    "name": "Joe Smith",
    "height": "42",
    "experience": "YES",
    "guardians": "Jim and Jan Smith"
]

let jillTanner: [String: String] = [
    "name": "Jill Tanner",
    "height": "36",
    "experience": "YES",
    "guardians": "Clara Tanner"
]

let billBon: [String: String] = [
    "name": "Bill Bon",
    "height": "43",
    "experience": "YES",
    "guardians": "Sara and Jenny Bon"
]

let evaGordon: [String: String] = [
    "name": "Eva Gordon",
    "height": "45",
    "experience": "NO",
    "guardians": "Wendy and Mike Gordon"
]

let mattGill: [String: String] = [
    "name": "Matt Gill",
    "height": "40",
    "experience": "NO",
    "guardians": "Charles and Sylvia Gill"
]

let kimmyStein: [String: String] = [
    "name": "Kimmy Stein",
    "height": "41",
    "experience": "NO",
    "guardians": "Bill and Hillary Stein"
]

let sammyAddams: [String: String] = [
    "name": "Sammy Adams",
    "height": "45",
    "experience": "NO",
    "guardians": "Jeff Adams"
]

let karlSaygan: [String: String] = [
    "name": "Karl Saygan",
    "height": "42",
    "experience": "YES",
    "guardians": "Heather Bledsoe"
]

let suzaneGreenberg: [String: String] = [
    "name": "Suzane Greenberg",
    "height": "44",
    "experience": "YES",
    "guardians": "Henrietta Dumas"
]

let salDali: [String: String] = [
    "name": "Sal Dali",
    "height": "41",
    "experience": "NO",
    "guardians": "Gala Dali"
]

let joeKavalier: [String: String] = [
    "name": "Joe Kavalier",
    "height": "39",
    "experience": "NO",
    "guardians": "Sam and Elaine Kavalier"
]

let benFinkelstein: [String: String] = [
    "name": "Ben Finkelstein",
    "height": "44",
    "experience": "NO",
    "guardians": "Aaron and Jill Finkelstein"
]

let diegoSoto: [String: String] = [
    "name": "Diego Soto",
    "height": "41",
    "experience": "YES",
    "guardians": "Robin and Sarika Soto"
]

let chloeAlaska: [String: String] = [
    "name": "Chloe Alaska",
    "height": "47",
    "experience": "NO",
    "guardians": "David and Jamie Alaska"
]

let arnoldWillis: [String: String] = [
    "name": "Arnold Willis",
    "height": "43",
    "experience": "NO",
    "guardians": "Claire Willis"
]

let phillipHelm: [String: String] = [
    "name": "Phillip Helm",
    "height": "44",
    "experience": "YES",
    "guardians": "Thomas Helm and Eva Jones"
]

let lesClay: [String: String] = [
    "name": "Les Clay",
    "height": "42",
    "experience": "YES",
    "guardians": "Wynonna Brown"
]

let herschelKrustofski: [String: String] = [
    "name": "Herschel Krustofski",
    "height": "45",
    "experience": "YES",
    "guardians": "Hyman and Rachel Krustofski"
]

// League Creation + Append Players

var league: [[String: String]] = []

league.append(joeSmith)
league.append(jillTanner)
league.append(billBon)
league.append(evaGordon)
league.append(mattGill)
league.append(kimmyStein)
league.append(sammyAddams)
league.append(karlSaygan)
league.append(suzaneGreenberg)
league.append(salDali)
league.append(joeKavalier)
league.append(benFinkelstein)
league.append(diegoSoto)
league.append(chloeAlaska)
league.append(arnoldWillis)
league.append(phillipHelm)
league.append(lesClay)
league.append(herschelKrustofski)

// Separating experienced players from inexperienced ones

for player in league {
    if player["experience"] == "YES" {
        experiencedPlayers.append(player)
    } else {
        inexperiencedPlayers.append(player)
    }
}

// Ordering Experienced and Inexperienced players by height; appending them to orderedLeague variable.

heightOrderedExperiencedPlayers = experiencedPlayers.sort { $0["height"] < $1["height"] }
heightOrderedInexperiencedPlayers = inexperiencedPlayers.sort { $0["height"] < $1["height"] }

orderedLeague = (heightOrderedExperiencedPlayers) + (heightOrderedInexperiencedPlayers)

// Sort players, 1 experienced 1 rookie, 1 tall, 1 short for each team.

func sortTeams() {
    
    while orderedLeague.count > 0 {
        dragons.append(orderedLeague.removeFirst())
        dragons.append(orderedLeague.removeLast())
        sharks.append(orderedLeague.removeFirst())
        sharks.append(orderedLeague.removeLast())
        raptors.append(orderedLeague.removeFirst())
        raptors.append(orderedLeague.removeLast())
    }
    
}

// Sorting Function Execution

sortTeams()

// Updating Teams Info

for i in 0..<dragons.count {
    dragons[i].updateValue("March 17, 1pm", forKey: "practice")
    dragons[i].updateValue("Dragons", forKey: "team")
}

for i in 0..<sharks.count {
    sharks[i].updateValue("March 17, 3pm", forKey: "practice")
    sharks[i].updateValue("Sharks", forKey: "team")
}

for i in 0..<raptors.count {
    raptors[i].updateValue("March 18, 1pm", forKey: "practice")
    raptors[i].updateValue("Raptors", forKey: "team")
}

/* 
Function to Send letters to Guardians. It accepts a team Array, and will iterate it 
by using for/in to print letters with each player attributes.
*/

func sendLetters(team: [[String: String]]) {
    for player in team {
        print("Greetings \(player["guardians"]!), your child has been placed in the \(player["team"]!) team. \(player["name"]!) should attend to the first team practice which will be held on \(player["practice"]!) ")
    }

}

// Send Letters

sendLetters(dragons)
sendLetters(sharks)
sendLetters(raptors)