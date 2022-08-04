//
//  Wand.swift
//  MVVM_HarryPotter
//
//  Created by worker on 04.08.2022.
//

import Foundation

struct WandHP: Codable {
    let wood: String
    let core: String
    let length: Length
}

enum Length: Codable {
    case int(Int)
    case string(String)
    case double(Double)
    
    init(from decoder: Decoder) throws {
        let value = try decoder.singleValueContainer()
        do {
            self = .double(try value.decode(Double.self))
        } catch DecodingError.typeMismatch {
            do {
                self = .string(try value.decode(String.self))
            } catch DecodingError.typeMismatch {
                self = .int(try value.decode(Int.self))
            }
        }
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .int(let intValue): try container.encode(intValue)
        case .string(let stringValue): try container.encode(stringValue)
        case .double(let doubleValue): try container.encode(doubleValue)
        }
    }
    
    enum ParseError: Error {
        case notRecognizedType(Any)
    }
}
