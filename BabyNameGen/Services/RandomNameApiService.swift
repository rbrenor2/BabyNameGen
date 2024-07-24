//
//  RandomNameApiService.swift
//  BabyNameGen
//
//  Created by Breno R R on 24/07/2024.
//

import Foundation

struct RandomNameApiService: RandomNameService {
    func getRandomNameFor(_ gender: Gender) async throws -> NameInfo {
        let endpoint = gender == .MALE ? Environment.Endpoints.namesMale.rawValue : Environment.Endpoints.namesFemale.rawValue
        
        guard let endpointUrl = URL(string: "\(Environment.baseURL)\(endpoint)") else {
            throw NetworkError.badURL
        }
        
        let request = URLRequest(url: endpointUrl)
        
        let (data, response) = try await URLSession.shared.data(for: request)
        
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
            throw NetworkError.badResponse
        }
        
        do {
            let decodedData = try JSONDecoder().decode([String].self, from: data)
            let nameInfo = NameInfo.getNameInfoFrom(decodedData)
            return nameInfo
        } catch {
            throw NetworkError.invalidData
        }
    }
}
