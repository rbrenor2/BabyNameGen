//
//  ContentVM.swift
//  BabyNameGen
//
//  Created by Breno R R on 20/07/2024.
//

import Foundation

extension ContentView { 
    
    // @MainActor
    class ViewModel: ObservableObject {
        @Published var name: String = Environment.LabelKeys.START_MESSAGE.rawValue
        @Published var isLoading: Bool = false
        
        let randomNameService: RandomNameService
        
        init(randomNameService: RandomNameService) {
            self.randomNameService = randomNameService
        }
        
        func getRandomNameFor(_ gender: Gender) async {
            DispatchQueue.main.async { [weak self] in
                self?.isLoading.toggle()
            }
            
            do {
                let randomName = try await randomNameService.getRandomNameFor(gender)
                DispatchQueue.main.async { [weak self] in
                    self?.name = randomName.name
                    self?.isLoading.toggle()
                }
            } catch {
                print("Error getting the name...")
            }
        }
    }
}
