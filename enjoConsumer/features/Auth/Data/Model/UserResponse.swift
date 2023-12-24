// UserResponse.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let userResponse = try? newJSONDecoder().decode(UserResponse.self, from: jsonData)
//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

import Foundation

// MARK: - UserResponse
public struct UserResponse: Codable, Hashable {
    public let results: [Result]?
    public let info: Info?

    enum CodingKeys: String, CodingKey {
        case results = "results"
        case info = "info"
    }

    public init(results: [Result]?, info: Info?) {
        self.results = results
        self.info = info
    }
}

// Info.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let info = try? newJSONDecoder().decode(Info.self, from: jsonData)
//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).



// MARK: - Info
public struct Info: Codable, Hashable {
    public let seed: String?
    public let results: Int?
    public let page: Int?
    public let version: String?

    enum CodingKeys: String, CodingKey {
        case seed = "seed"
        case results = "results"
        case page = "page"
        case version = "version"
    }

    public init(seed: String?, results: Int?, page: Int?, version: String?) {
        self.seed = seed
        self.results = results
        self.page = page
        self.version = version
    }
}

// Result.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let result = try? newJSONDecoder().decode(Result.self, from: jsonData)
//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).



// MARK: - Result
public struct Result: Codable, Hashable {
    public let gender: String?
    public let name: Name?
    public let location: Location?
    public let email: String?
    public let login: Login?
    public let dob: Dob?
    public let registered: Dob?
    public let phone: String?
    public let cell: String?
    public let id: ID?
    public let picture: Picture?
    public let nat: String?

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
        case id = "id"
        case picture = "picture"
        case nat = "nat"
    }

    public init(gender: String?, name: Name?, location: Location?, email: String?, login: Login?, dob: Dob?, registered: Dob?, phone: String?, cell: String?, id: ID?, picture: Picture?, nat: String?) {
        self.gender = gender
        self.name = name
        self.location = location
        self.email = email
        self.login = login
        self.dob = dob
        self.registered = registered
        self.phone = phone
        self.cell = cell
        self.id = id
        self.picture = picture
        self.nat = nat
    }
}

// Dob.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let dob = try? newJSONDecoder().decode(Dob.self, from: jsonData)
//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).



// MARK: - Dob
public struct Dob: Codable, Hashable {
    public let date: String?
    public let age: Int?

    enum CodingKeys: String, CodingKey {
        case date = "date"
        case age = "age"
    }

    public init(date: String?, age: Int?) {
        self.date = date
        self.age = age
    }
}

// ID.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let iD = try? newJSONDecoder().decode(ID.self, from: jsonData)
//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).



// MARK: - ID
public struct ID: Codable, Hashable {
    public let name: String?
    public let value: String?

    enum CodingKeys: String, CodingKey {
        case name = "name"
        case value = "value"
    }

    public init(name: String?, value: String?) {
        self.name = name
        self.value = value
    }
}

// Location.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let location = try? newJSONDecoder().decode(Location.self, from: jsonData)
//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).



// MARK: - Location
public struct Location: Codable, Hashable {
    public let street: Street?
    public let city: String?
    public let state: String?
    public let country: String?
    public let postcode: String?
    public let coordinates: Coordinates?
    public let timezone: Timezone?

    enum CodingKeys: String, CodingKey {
        case street = "street"
        case city = "city"
        case state = "state"
        case country = "country"
        case postcode = "postcode"
        case coordinates = "coordinates"
        case timezone = "timezone"
    }

    public init(street: Street?, city: String?, state: String?, country: String?, postcode: String?, coordinates: Coordinates?, timezone: Timezone?) {
        self.street = street
        self.city = city
        self.state = state
        self.country = country
        self.postcode = postcode
        self.coordinates = coordinates
        self.timezone = timezone
    }
}

// Coordinates.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let coordinates = try? newJSONDecoder().decode(Coordinates.self, from: jsonData)
//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).



// MARK: - Coordinates
public struct Coordinates: Codable, Hashable {
    public let latitude: String?
    public let longitude: String?

    enum CodingKeys: String, CodingKey {
        case latitude = "latitude"
        case longitude = "longitude"
    }

    public init(latitude: String?, longitude: String?) {
        self.latitude = latitude
        self.longitude = longitude
    }
}

// Street.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let street = try? newJSONDecoder().decode(Street.self, from: jsonData)
//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).



// MARK: - Street
public struct Street: Codable, Hashable {
    public let number: Int?
    public let name: String?

    enum CodingKeys: String, CodingKey {
        case number = "number"
        case name = "name"
    }

    public init(number: Int?, name: String?) {
        self.number = number
        self.name = name
    }
}

// Timezone.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let timezone = try? newJSONDecoder().decode(Timezone.self, from: jsonData)
//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).



// MARK: - Timezone
public struct Timezone: Codable, Hashable {
    public let offset: String?
    public let description: String?

    enum CodingKeys: String, CodingKey {
        case offset = "offset"
        case description = "description"
    }

    public init(offset: String?, description: String?) {
        self.offset = offset
        self.description = description
    }
}

// Login.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let login = try? newJSONDecoder().decode(Login.self, from: jsonData)
//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).



// MARK: - Login
public struct Login: Codable, Hashable {
    public let uuid: String?
    public let username: String?
    public let password: String?
    public let salt: String?
    public let md5: String?
    public let sha1: String?
    public let sha256: String?

    enum CodingKeys: String, CodingKey {
        case uuid = "uuid"
        case username = "username"
        case password = "password"
        case salt = "salt"
        case md5 = "md5"
        case sha1 = "sha1"
        case sha256 = "sha256"
    }

    public init(uuid: String?, username: String?, password: String?, salt: String?, md5: String?, sha1: String?, sha256: String?) {
        self.uuid = uuid
        self.username = username
        self.password = password
        self.salt = salt
        self.md5 = md5
        self.sha1 = sha1
        self.sha256 = sha256
    }
}

// Name.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let name = try? newJSONDecoder().decode(Name.self, from: jsonData)
//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).



// MARK: - Name
public struct Name: Codable, Hashable {
    public let title: String?
    public let first: String?
    public let last: String?

    enum CodingKeys: String, CodingKey {
        case title = "title"
        case first = "first"
        case last = "last"
    }

    public init(title: String?, first: String?, last: String?) {
        self.title = title
        self.first = first
        self.last = last
    }
}

// Picture.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let picture = try? newJSONDecoder().decode(Picture.self, from: jsonData)
//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).


// MARK: - Picture
public struct Picture: Codable, Hashable {
    public let large: String?
    public let medium: String?
    public let thumbnail: String?

    enum CodingKeys: String, CodingKey {
        case large = "large"
        case medium = "medium"
        case thumbnail = "thumbnail"
    }

    public init(large: String?, medium: String?, thumbnail: String?) {
        self.large = large
        self.medium = medium
        self.thumbnail = thumbnail
    }
}

// JSONSchemaSupport.swift

import Foundation
