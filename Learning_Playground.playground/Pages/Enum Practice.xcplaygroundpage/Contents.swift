//: [Previous](@previous)

import Foundation

enum IntCategory {
    case small
    case medium
    case big
    case weird

    init(number: Int) {
        switch number {
            case 0..<1000 :
                self = .small
            case 1000..<100000:
                self = .medium
            case 100000..<1000000:
                self = .big
            default:
                self = .weird
        }
    }
}

let intCategory = IntCategory(number: 34645)
print(intCategory)





//  https://developerinsider.co/advanced-enum-enumerations-by-example-swift-programming-language/

enum CharacterType {
    case thief
    case warrior
}

struct Character {
    enum CharacterType {
        case thief
        case warrior
    }
    enum Weapon {
        case bow
        case sword
        case dagger
    }
    let type: CharacterType
    let weapon: Weapon
}



let character = Character(type: .warrior, weapon: .sword)
print("\(character.type) chosen \(character.weapon)")
