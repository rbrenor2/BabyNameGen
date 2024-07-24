//
//  RandomNameServiceProtocol.swift
//  BabyNameGen
//
//  Created by Breno R R on 21/07/2024.
//

protocol RandomNameService {
    func getRandomNameFor(_ gender: Gender) async throws -> NameInfo
}
