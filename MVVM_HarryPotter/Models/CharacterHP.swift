//
//  CharacterHP.swift
//  MVVM_HarryPotter
//
//  Created by worker on 04.08.2022.
//

import Foundation

struct CharacterHP: Codable {
    let name: String
    let species: String
    let gender: String
    let house: String
    let dateOfBirth: String
    let yearOfBirth: YearOfBirth
    let wizard: Bool
    let ancestry: String
    let eyeColour: String
    let hairColour: String
    let wand: WandHP?
    let patronus: String
    let hogwartsStudent:  Bool
    let hogwartsStaff: Bool
    let actor: String
    let alive: Bool
    let image: String
}

enum YearOfBirth: Codable {
    case int(Int)
    case string(String)
    
    init(from decoder: Decoder) throws {
        let value = try decoder.singleValueContainer()
        do {
            self = .int(try value.decode(Int.self))
        } catch DecodingError.typeMismatch {
            self = .string(try value.decode(String.self))
        }
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .int(let intValue): try container.encode(intValue)
        case .string(let stringValue): try container.encode(stringValue)
        }
    }
    
    enum ParseError: Error {
        case notRecognizedType(Any)
    }
}
