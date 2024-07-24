//
//  NameResponse.swift
//  BabyNameGen
//
//  Created by Breno R R on 21/07/2024.
//

struct NameInfo: Decodable {
    let year: String
    let gender: String
    let ethinicity: String
    let name: String
    let numberOfOcurrences: String
    let rank: String
}
