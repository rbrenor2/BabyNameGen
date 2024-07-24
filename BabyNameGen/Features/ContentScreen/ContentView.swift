//
//  ContentView.swift
//  BabyNameGen
//
//  Created by Breno R R on 20/07/2024.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var vm: ViewModel

    var body: some View {
            VStack {
                ZStack {
                    if(vm.isLoading) {
                        ProgressView()
                    } else {
                        HStack {
                            Text(vm.name)
                                .font(.largeTitle)
                                .bold()
                                .padding()
                        }
                    }
                }.frame(height: 80)
                HStack {
                    GenerateButton(gender: .FEMALE, isLoading: $vm.isLoading) {
                         await vm.getRandomNameFor(.FEMALE)
                    }
                    GenerateButton(gender: .MALE, isLoading: $vm.isLoading) {
                         await vm.getRandomNameFor(.MALE)
                    }
                }
            }
            .padding()
        }
}


#Preview {
    let contentViewModel = ContentView.ViewModel(randomNameService: RandomNameMockService())
    return ContentView(vm: contentViewModel)
}
