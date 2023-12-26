// UserResponse.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let userResponse = try? newJSONDecoder().decode(UserResponse.self, from: jsonData)

import Foundation
import OptionallyDecodable // https://github.com/idrougge/OptionallyDecodable

// MARK: - UserResponse
struct UserResponse: Codable {
    let results: [Results]?
    let info: Info?

    enum CodingKeys: String, CodingKey {
        case results = "results"
        case info = "info"
    }
}

// Info.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let info = try? newJSONDecoder().decode(Info.self, from: jsonData)

import Foundation
import OptionallyDecodable // https://github.com/idrougge/OptionallyDecodable

// MARK: - Info
struct Info: Codable {
    let seed: String?
    let results: Int?
    let page: Int?
    let version: String?

    enum CodingKeys: String, CodingKey {
        case seed = "seed"
        case results = "results"
        case page = "page"
        case version = "version"
    }
}

// Result.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let result = try? newJSONDecoder().decode(Result.self, from: jsonData)

import Foundation
import OptionallyDecodable // https://github.com/idrougge/OptionallyDecodable

// MARK: - Result
struct Results: Codable , Hashable , Equatable{
    
    static func ==(lhs: Self, rhs: Self) -> Bool {
            return lhs.id == rhs.id
        }
    
    var id : ID?
    let gender: String?
    let name: Name?
    let location: Location?
    let email: String?
    let login: Login?
    let dob: Dob?
    let registered: Dob?
    let phone: String?
    let cell: String?
    let picture: Picture?
    let nat: String?

    enum CodingKeys: String, CodingKey {
        case gender = "gender"
        case name = "name"
        case location = "location"
        case email = "email"
        case login = "login"
        case dob = "dob"
        case registered = "registered"
        case phone = "phone"
        case cell = "cell"
        case picture = "picture"
        case nat = "nat"
        case id = "id"
        
    }
    
    func hash(into hasher: inout Hasher) {
            hasher.combine(id)
            
        }
}

// Dob.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let dob = try? newJSONDecoder().decode(Dob.self, from: jsonData)

import Foundation
import OptionallyDecodable // https://github.com/idrougge/OptionallyDecodable

// MARK: - Dob
struct Dob: Codable {
    let date: String?
    let age: Int?

    enum CodingKeys: String, CodingKey {
        case date = "date"
        case age = "age"
    }
}

// ID.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let iD = try? newJSONDecoder().decode(ID.self, from: jsonData)

import Foundation
import OptionallyDecodable // https://github.com/idrougge/OptionallyDecodable

// MARK: - ID
struct ID: Codable, Hashable {
    let name: String?
    let value: String?

    enum CodingKeys: String, CodingKey {
        case name = "name"
        case value = "value"
    }
    
    func hash(into hasher: inout Hasher) {
            hasher.combine(name)
            
        }
}

// Location.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let location = try? newJSONDecoder().decode(Location.self, from: jsonData)

import Foundation
import OptionallyDecodable // https://github.com/idrougge/OptionallyDecodable

// MARK: - Location
struct Location: Codable {
    let street: Street?
    let city: String?
    let state: String?
    let country: String?
    let postcode: String?
    let coordinates: Coordinates?
    let timezone: Timezone?

    enum CodingKeys: String, CodingKey {
        case street = "street"
        case city = "city"
        case state = "state"
        case country = "country"
        case postcode = "postcode"
        case coordinates = "coordinates"
        case timezone = "timezone"
    }
}

// Coordinates.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let coordinates = try? newJSONDecoder().decode(Coordinates.self, from: jsonData)

import Foundation
import OptionallyDecodable // https://github.com/idrougge/OptionallyDecodable

// MARK: - Coordinates
struct Coordinates: Codable {
    let latitude: String?
    let longitude: String?

    enum CodingKeys: String, CodingKey {
        case latitude = "latitude"
        case longitude = "longitude"
    }
}

// Street.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let street = try? newJSONDecoder().decode(Street.self, from: jsonData)

import Foundation
import OptionallyDecodable // https://github.com/idrougge/OptionallyDecodable

// MARK: - Street
struct Street: Codable {
    let number: Int?
    let name: String?

    enum CodingKeys: String, CodingKey {
        case number = "number"
        case name = "name"
    }
}

// Timezone.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let timezone = try? newJSONDecoder().decode(Timezone.self, from: jsonData)

import Foundation
import OptionallyDecodable // https://github.com/idrougge/OptionallyDecodable

// MARK: - Timezone
struct Timezone: Codable {
    let offset: String?
    let description: String?

    enum CodingKeys: String, CodingKey {
        case offset = "offset"
        case description = "description"
    }
}

// Login.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let login = try? newJSONDecoder().decode(Login.self, from: jsonData)

import Foundation
import OptionallyDecodable // https://github.com/idrougge/OptionallyDecodable

// MARK: - Login
struct Login: Codable {
    let uuid: String?
    let username: String?
    let password: String?
    let salt: String?
    let md5: String?
    let sha1: String?
    let sha256: String?

    enum CodingKeys: String, CodingKey {
        case uuid = "uuid"
        case username = "username"
        case password = "password"
        case salt = "salt"
        case md5 = "md5"
        case sha1 = "sha1"
        case sha256 = "sha256"
    }
}

// Name.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let name = try? newJSONDecoder().decode(Name.self, from: jsonData)

import Foundation
import OptionallyDecodable // https://github.com/idrougge/OptionallyDecodable

// MARK: - Name
struct Name: Codable {
    let title: String?
    let first: String?
    let last: String?

    enum CodingKeys: String, CodingKey {
        case title = "title"
        case first = "first"
        case last = "last"
    }
}

// Picture.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let picture = try? newJSONDecoder().decode(Picture.self, from: jsonData)

import Foundation
import OptionallyDecodable // https://github.com/idrougge/OptionallyDecodable

// MARK: - Picture
struct Picture: Codable {
    let large: String?
    let medium: String?
    let thumbnail: String?

    enum CodingKeys: String, CodingKey {
        case large = "large"
        case medium = "medium"
        case thumbnail = "thumbnail"
    }
}

// JSONSchemaSupport.swift

import Foundation
