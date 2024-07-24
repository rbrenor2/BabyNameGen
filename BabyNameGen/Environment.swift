//
//  Environment.swift
//  BabyNameGen
//
//  Created by Breno R R on 24/07/2024.
//
import Foundation

struct Environment {
    enum Keys {
        static let baseURL = "NAME_API_BASE_URL"
    }
    
    static var baseURL: String {
        guard let baseURLProperty = Bundle.main.object(forInfoDictionaryKey: Keys.baseURL) as? String else {
            fatalError("Base URL not found")
        }
        
        return baseURLProperty
    }
    
    enum Endpoints: String {
        case namesFemale = "names/female"
        case namesMale = "names/male"
    }
    
    enum LabelKeys: String {
        case START_MESSAGE = "Click to generate"
    }
}
