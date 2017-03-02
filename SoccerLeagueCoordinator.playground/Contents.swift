/* 
 Project 1 (Soccer League Coordinator)
 */

// Step 1. A list of all the players and their information


let player1: [String : Any] = ["name": "Joe Smith", "height": 42.0, "prevExperience": true, "nameOfGuardians": "Jim and Jan Smith"]
let player2: [String : Any] = ["name": "Jill Tanner", "height": 36.0, "prevExperience": true, "nameOfGuardians": "Clara Tanner"]
let player3: [String : Any] = ["name": "Bill Bon", "height": 43.0, "prevExperience": true, "nameOfGuardians": "Sara and Jenny Bon"]
let player4: [String: Any] = ["name": "Eva Gordon", "height": 45.0, "prevExperience": false, "nameOfGuardians": "Wendy and Mike Gordon"]
let player5: [String: Any] = ["name": "Matt Gill", "height": 40.0, "prevExperience": false, "nameOfGuardians": "Charles and Sylvia Gill"]
let player6: [String: Any] = ["name": "Kimmy Stein", "height": 41.0, "prevExperience": false, "nameOfGuardians": "Bill and Hilary Stein"]
let player7: [String: Any] = ["name": "Sammy Adams", "height": 45.0, "prevExperience": false, "nameOfGuardians": "Jeff Adams"]
let player8: [String: Any] = ["name": "Karl Saygan", "height": 42.0, "prevExperience": true, "nameOfGuardians": "Heather Bledsoe"]
let player9: [String: Any] = ["name": "Suzane Greenberg", "height": 44.0, "prevExperience": true, "nameOfGuardians": "Henrietta Dumas"]
let player10: [String: Any] = ["name": "Sal Dali", "height": 41.0, "prevExperience": false, "nameOfGuardians": "Gala Dali"]
let player11: [String: Any] = ["name": "Joe Kavalier", "height": 39.0, "prevExperience": false, "nameOfGuardians": "Sam and Elaine Kavalier"]
let player12: [String: Any] = ["name": "Ben Finkelstein", "height": 44.0, "prevExperience": false, "nameOfGuardians": "Aaron and Jill Finkelstein"]
let player13: [String: Any] = ["name": "Diego Soto", "height": 41.0, "prevExperience": true, "nameOfGuardians": "Robin and Sarika Soto"]
let player14: [String: Any] = ["name": "Chloe Alaska", "height": 47.0, "prevExperience": false, "nameOfGuardians": "David and Jamie Alaska"]
let player15: [String: Any] = ["name": "Arnold Willis", "height": 43.0, "prevExperience": false, "nameOfGuardians": "Claire Willis"]
let player16: [String: Any] = ["name": "Phillip Helm", "height": 44.0, "prevExperience": true, "nameOfGuardians": "Thomas Helm and Eva Jones"]
let player17: [String: Any] = ["name": "Les Clay", "height": 42.0, "prevExperience": true, "nameOfGuardians": "Wynonna Brown"]
let player18: [String: Any] = ["name": "Herschel Krustofski", "height": 45.0, "prevExperience": true, "nameOfGuardians": "Hyman and Rachel Krustofski"]


var players = [player1, player2, player3, player4, player5, player6, player7, player8, player9, player10, player11, player12, player13, player14, player15, player16, player17, player18]




/*
 Assigning players to their respective teams
 */


var expPlayers = [[String: Any]]()
var unexpPlayers = [[String: Any]]()


for player in players {
    if (player["prevExperience"] as! Bool == true) {
        expPlayers.append(player)
    } else {
        unexpPlayers.append(player)
    }
}


var teamSharks = [[String: Any]]()
var teamDragons = [[String: Any]]()
var teamRaptors = [[String: Any]]()


// three experienced players on each team

for expPlayer in expPlayers {
    if (teamSharks.count == teamRaptors.count) {
        teamSharks.append(expPlayer)
    } else if (teamDragons.count == teamRaptors.count) {
        teamDragons.append(expPlayer)
    } else if (teamRaptors.count < teamSharks.count) {
        teamRaptors.append(expPlayer)
    }
}


// three players with absolutely no experience on each team

for unexpPlayer in unexpPlayers {
    if (teamSharks.count == teamRaptors.count) {
        teamSharks.append(unexpPlayer)
    } else if (teamDragons.count == teamRaptors.count) {
        teamDragons.append(unexpPlayer)
    } else if (teamRaptors.count < teamSharks.count){
        teamRaptors.append(unexpPlayer)
    }
}


// Sending letters to all guardians

func teamLetters(team: [[String: Any]], date: String, teamName: String) {
    
    var letters: Array! = []
    
    for player in team {
        let letter = ("Dear \(player["nameOfGuardians"] as! String), \(player["name"] as! String) has been selected to play for the \(teamName) in the upcoming season. He is expected to be at the field for our first practice on \(date).")
        letters.append(letter)
    }
    print(letters)
}

print("SHARK LETTERS")
print("")
teamLetters(team: teamSharks, date: "March 17, 3pm", teamName: "Sharks")
print("")
print("")


print("DRAGON LETTERS")
print("")
teamLetters(team: teamDragons, date: "March 17, 1pm", teamName: "Dragons")
print("")
print("")


print("RAPTOR LETTERS")
print("")
teamLetters(team: teamRaptors, date: "March 18, 1pm", teamName: "Raptors")














