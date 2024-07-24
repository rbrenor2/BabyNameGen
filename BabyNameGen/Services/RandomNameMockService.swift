//
//  RandomNameService.swift
//  BabyNameGen
//
//  Created by Breno R R on 20/07/2024.
//

import Foundation

let data = [
    ["2016", "FEMALE", "ASIAN AND PACIFIC ISLANDER", "Olivia", "172", "1"],
    ["2016", "FEMALE", "ASIAN AND PACIFIC ISLANDER", "Chloe", "112", "2"],
    ["2016", "FEMALE", "BLACK NON HISPANIC", "Ava", "109", "1"],
    ["2016", "FEMALE", "BLACK NON HISPANIC", "Madison", "104", "2"],
    ["2016", "FEMALE", "HISPANIC", "Isabella", "276", "1"],
    ["2016", "FEMALE", "HISPANIC", "Sophia", "261", "2"],
    ["2016", "FEMALE", "WHITE NON HISPANIC", "Olivia", "230", "1"],
    ["2016", "FEMALE", "WHITE NON HISPANIC", "Rachel", "221", "2"],
    ["2016", "MALE", "ASIAN AND PACIFIC ISLANDER", "Ethan", "193", "1"],
    ["2016", "MALE", "ASIAN AND PACIFIC ISLANDER", "Ryan", "160", "2"],
    ["2016", "MALE", "BLACK NON HISPANIC", "Noah", "148", "1"],
    ["2016", "MALE", "BLACK NON HISPANIC", "Aiden", "137", "2"],
    ["2016", "MALE", "HISPANIC", "Liam", "387", "1"],
    ["2016", "MALE", "HISPANIC", "Jacob", "351", "2"],
    ["2016", "MALE", "WHITE NON HISPANIC", "Joseph", "261", "1"],
    ["2016", "MALE", "WHITE NON HISPANIC", "Michael", "260", "2"],
    ["2015", "FEMALE", "ASIAN AND PACIFIC ISLANDER", "Olivia", "188", "1"],
    ["2015", "FEMALE", "ASIAN AND PACIFIC ISLANDER", "Chloe", "119", "2"],
    ["2015", "FEMALE", "BLACK NON HISPANIC", "Madison", "128", "1"],
    ["2015", "FEMALE", "BLACK NON HISPANIC", "Skylar", "91", "2"],
    ["2015", "FEMALE", "HISPANIC", "Isabella", "307", "1"],
    ["2015", "FEMALE", "HISPANIC", "Sophia", "269", "2"],
    ["2015", "FEMALE", "WHITE NON HISPANIC", "Emma", "225", "1"],
    ["2015", "FEMALE", "WHITE NON HISPANIC", "Olivia", "225", "1"],
    ["2015", "FEMALE", "WHITE NON HISPANIC", "Leah", "220", "2"],
    ["2015", "MALE", "ASIAN AND PACIFIC ISLANDER", "Jayden", "190", "1"],
    ["2015", "MALE", "ASIAN AND PACIFIC ISLANDER", "Ethan", "172", "2"],
    ["2015", "MALE", "BLACK NON HISPANIC", "Noah", "163", "1"],
    ["2015", "MALE", "BLACK NON HISPANIC", "Liam", "129", "2"],
    ["2015", "MALE", "HISPANIC", "Liam", "356", "1"],
    ["2015", "MALE", "HISPANIC", "Dylan", "339", "2"],
    ["2015", "MALE", "WHITE NON HISPANIC", "David", "299", "1"],
    ["2015", "MALE", "WHITE NON HISPANIC", "Joseph", "279", "2"],
    ["2014", "FEMALE", "ASIAN AND PACIFIC ISLANDER", "Olivia", "141", "1"],
    ["2014", "FEMALE", "ASIAN AND PACIFIC ISLANDER", "Chloe", "111", "2"],
    ["2014", "FEMALE", "ASIAN AND PACIFIC ISLANDER", "Sophia", "111", "2"],
    ["2014", "FEMALE", "BLACK NON HISPANIC", "Madison", "130", "1"],
    ["2014", "FEMALE", "BLACK NON HISPANIC", "Ava", "78", "2"],
    ["2014", "FEMALE", "HISPANIC", "Isabella", "331", "1"],
    ["2014", "FEMALE", "HISPANIC", "Sophia", "259", "2"],
    ["2014", "FEMALE", "WHITE NON HISPANIC", "Olivia", "248", "1"],
    ["2014", "FEMALE", "WHITE NON HISPANIC", "Esther", "233", "2"],
    ["2014", "MALE", "ASIAN AND PACIFIC ISLANDER", "Jayden", "187", "1"],
    ["2014", "MALE", "ASIAN AND PACIFIC ISLANDER", "Ethan", "179", "2"],
    ["2014", "MALE", "BLACK NON HISPANIC", "Ethan", "138", "1"],
    ["2014", "MALE", "BLACK NON HISPANIC", "Noah", "128", "2"],
    ["2014", "MALE", "HISPANIC", "Liam", "312", "1"],
    ["2014", "MALE", "HISPANIC", "Dylan", "292", "2"],
    ["2014", "MALE", "HISPANIC", "Jacob", "292", "2"],
    ["2014", "MALE", "WHITE NON HISPANIC", "Joseph", "300", "1"],
    ["2014", "MALE", "WHITE NON HISPANIC", "David", "272", "2"],
    ["2013", "FEMALE", "ASIAN AND PACIFIC ISLANDER", "Sophia", "124", "1"],
    ["2013", "FEMALE", "ASIAN AND PACIFIC ISLANDER", "Chloe", "122", "2"],
    ["2013", "FEMALE", "BLACK NON HISPANIC", "Madison", "134", "1"],
    ["2013", "FEMALE", "BLACK NON HISPANIC", "London", "76", "2"],
    ["2013", "FEMALE", "HISPANIC", "Isabella", "326", "1"],
    ["2013", "FEMALE", "HISPANIC", "Sophia", "291", "2"],
    ["2013", "FEMALE", "WHITE NON HISPANIC", "Olivia", "233", "1"],
    ["2013", "FEMALE", "WHITE NON HISPANIC", "Emma", "228", "2"],
    ["2013", "MALE", "ASIAN AND PACIFIC ISLANDER", "Jayden", "220", "1"],
    ["2013", "MALE", "ASIAN AND PACIFIC ISLANDER", "Ethan", "165", "2"],
    ["2013", "MALE", "BLACK NON HISPANIC", "Ethan", "146", "1"],
    ["2013", "MALE", "BLACK NON HISPANIC", "Jayden", "138", "2"],
    ["2013", "MALE", "HISPANIC", "Jayden", "352", "1"],
    ["2013", "MALE", "HISPANIC", "Jacob", "297", "2"],
    ["2013", "MALE", "WHITE NON HISPANIC", "David", "304", "1"],
    ["2013", "MALE", "WHITE NON HISPANIC", "Joseph", "283", "2"],
    ["2012", "FEMALE", "ASIAN AND PACIFIC ISLANDER", "Chloe", "172", "1"],
    ["2012", "FEMALE", "ASIAN AND PACIFIC ISLANDER", "Sophia", "144", "2"],
    ["2012", "FEMALE", "BLACK NON HISPANIC", "Madison", "159", "1"],
    ["2012", "FEMALE", "BLACK NON HISPANIC", "London", "87", "2"],
    ["2012", "FEMALE", "HISPANIC", "Isabella", "327", "1"],
    ["2012", "FEMALE", "HISPANIC", "Sophia", "236", "2"],
    ["2012", "FEMALE", "WHITE NON HISPANIC", "Emma", "228", "1"],
    ["2011", "MALE", "ASIAN AND PACIFIC ISLANDER", "ETHAN", "177", "1"],
    ["2011", "MALE", "ASIAN AND PACIFIC ISLANDER", "JAYDEN", "173", "2"],
    ["2011", "MALE", "BLACK NON HISPANIC", "JAYDEN", "184", "1"],
    ["2011", "MALE", "BLACK NON HISPANIC", "AIDEN", "167", "2"],
    ["2011", "MALE", "HISPANIC", "JAYDEN", "426", "1"],
    ["2011", "MALE", "HISPANIC", "JUSTIN", "310", "2"],
    ["2011", "MALE", "WHITE NON HISPANIC", "MICHAEL", "292", "1"],
    ["2011", "MALE", "WHITE NON HISPANIC", "JOSEPH", "281", "2"]
]

struct RandomNameMockService: RandomNameService {
    func getRandomNameFor(_ gender: Gender) async throws -> NameInfo {
        let namesFromGender = data.filter { $0[DataInfoIndex.gender.rawValue] == gender.rawValue }
        let randomIndex = Int.random(in: 0..<namesFromGender.count)
        
        let randomName =  namesFromGender[randomIndex]

        try? await Task.sleep(nanoseconds: UInt64(2 * Double(NSEC_PER_SEC)))
        
        let nameInfo = NameInfo.getNameInfoFrom(randomName)
        
        return nameInfo
    }
}
