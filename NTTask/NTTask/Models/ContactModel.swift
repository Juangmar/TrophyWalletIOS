//
//  ContactModel.swift
//  NTTask
//
//  Created by Juan Gomez Martinho Gonzalez on 16/3/22.
//
// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let contacts = try? newJSONDecoder().decode(Contacts.self, from: jsonData)

import Foundation

// MARK: - Contacts
struct Contacts: Codable {
    let arrayContacts: [ArrayContact]?

    enum CodingKeys: String, CodingKey {
        case arrayContacts = "arrayContacts"
    }
}

// MARK: - ArrayContact
struct ArrayContact: Codable {
    let firstName: String?
    let lastName: String?
    let usernameTwitter: String?
    let createdPost: String?
    let experienciaCV: String?
    let numeroSeguidores: String?
    let abstractoVC: String?
    let descriptionCV: String?
    let imageProfile: String?
    let imagePost: String?
    let telefonoMovil: String?
    let telefonoTrabajo: String?
    let email: String?
    let cuentaLinkedin: String?

    enum CodingKeys: String, CodingKey {
        case firstName = "firstName"
        case lastName = "lastName"
        case usernameTwitter = "usernameTwitter"
        case createdPost = "createdPost"
        case experienciaCV = "experienciaCV"
        case numeroSeguidores = "numeroSeguidores"
        case abstractoVC = "abstractoVC"
        case descriptionCV = "descriptionCV"
        case imageProfile = "imageProfile"
        case imagePost = "imagePost"
        case telefonoMovil = "telefonoMovil"
        case telefonoTrabajo = "telefonoTrabajo"
        case email = "email"
        case cuentaLinkedin = "cuentaLinkedin"
    }
}

extension Contacts {
    static var stubbedContacts: [ArrayContact]? {
        do{
            let response: Contacts? = try Bundle.main.loadAndDecodeJSON(filename: "contacts")
            return response?.arrayContacts ?? []
        } catch {
            
        }
        return nil
        
    }
}

extension Bundle {
    func loadAndDecodeJSON<D: Decodable>(filename: String) throws -> D? {
        guard let url = self.url(forResource: filename, withExtension: ".json") else{
            return nil
        }
        let data = try? Data(contentsOf: url)
        let jsonDecoder = JSONDecoder()
        let decodeModel = try? jsonDecoder.decode(D.self, from: data!)
        return decodeModel
    }
}

class Utils{
    static let jsonDecoder: JSONDecoder = {
       let jsonDecoder = JSONDecoder()
        jsonDecoder.keyDecodingStrategy = .convertFromSnakeCase
        jsonDecoder.dateDecodingStrategy = .formatted(dateFormatter)
        return jsonDecoder
    }()
    
    static let dateFormatter: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-mm-dd"
        return dateFormatter
    }()
}
