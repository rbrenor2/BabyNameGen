//
//  RandomNameApiService.swift
//  BabyNameGen
//
//  Created by Breno R R on 24/07/2024.
//


import Foundation

enum NetworkError: Error {
    case badURL
    case badResponse
    case invalidData
}

struct RandomNameApiService: RandomNameService {
    func getRandomNameFor(_ gender: Gender) async throws -> NameInfo {
        let endpoint = gender == .MALE ? Environment.Endpoints.namesMale : Environment.Endpoints.namesFemale
        
        guard let endpointUrl = URL(string: "\(Environment.baseURL)\(endpoint)") else {
            throw NetworkError.badURL
        }
        
        let request = URLRequest(url: endpointUrl)
        
        let (data, response) = try await URLSession.shared.data(for: request)
        
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
            throw NetworkError.badResponse
        }
        
        do {
            let decodedData = try JSONDecoder().decode(NameInfo.self, from: data)
            return decodedData
        } catch {
            throw NetworkError.invalidData
        }
    }
}
