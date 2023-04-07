import UIKit

//MARK: - Protocols

protocol Movable {
    
    func run()
}

protocol Figtable {
    
    func fight()
}

protocol Hero: Movable, Figtable {
    var name: String {get set}
}

//MARK: -STruct

struct Farmer: Movable {
    func run() {
        print("Farmer start run")
    }
}

struct Cooker: Movable{
    func run() {
        print("Cokker start run")
    }
}

struct Butcher: Figtable {
    func fight() {
        print("Butcher start fight")
    }
}

struct Policeman: Figtable {
    func fight() {
        print("Policeman start fight")
    }
}

struct Thief: Hero {
    var name: String
    
    func run() {
        print("Thief \(name) start run")
    }
    
    func fight() {
        print("Thief \(name) start fight")
    }
}

struct Sherief: Hero {
    var name: String
    
    func run() {
        print("Sherief \(name) start run")
    }
    
    func fight() {
        print("Sherief \(name) start fight")
    }
}

//MARK: - Class

class Tavern {
    var fighter: [Figtable] = []
    var movers: [Movable] = []
  
    
    
    func enterTavern(hero: Hero) {
        
        hero.fight()
     
        for person in movers {
            person.run()
        }
        
        for person in fighter {
            person.fight()
        }
    }
    
    init(myFigher: [Figtable], myMovers: [Movable]) {
        self.fighter = myFigher
        self.movers = myMovers
    }
}

//MARK: -Exempliar

//Movable
var andrew = Farmer()
var alice = Cooker()

//Fighter
var john = Butcher()
var anie = Policeman()

//Hero
var mike = Thief(name: "Untouchable")
var martin = Sherief(name: "Martin")

var taverna = Tavern(myFigher: [john, anie], myMovers: [andrew, alice])

taverna.enterTavern(hero: mike)
print("-------------------------------")
taverna.enterTavern(hero: martin)

