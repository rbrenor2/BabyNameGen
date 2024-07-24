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
    
    static func getNameInfoFrom(_ info: [String]) -> NameInfo {
        return NameInfo(year: info[DataInfoIndex.year.rawValue], gender: info[DataInfoIndex.name.rawValue], ethinicity: info[DataInfoIndex.ethinicity.rawValue], name: info[DataInfoIndex.name.rawValue], numberOfOcurrences: info[DataInfoIndex.numberOfOcurrencies.rawValue], rank: info[DataInfoIndex.rank.rawValue])
    }
}
