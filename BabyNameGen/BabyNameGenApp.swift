//
//  BabyNameGenApp.swift
//  BabyNameGen
//
//  Created by Breno R R on 20/07/2024.
//

import SwiftUI

@main
struct BabyNameGenApp: App {
    let root = ContentView(vm: ContentView.ViewModel(randomNameService: RandomNameApiService()))

    var body: some Scene {
        WindowGroup {
            root
        }
    }
}
