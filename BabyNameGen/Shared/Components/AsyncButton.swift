//
//  AsyncButton.swift
//  BabyNameGen
//
//  Created by Breno R R on 21/07/2024.
//

import SwiftUI

struct AsyncButton<Label: View>: View {
    @ViewBuilder var label: () -> Label
    let action: () async -> Void
        
    var body: some View {
        Button {
            Task {
                await action()
            }
        } label: {
            label()
        }
    }
}

#Preview {
    AsyncButton {
        Text("Perform ASYNC")
    } action: {
        try? await Task.sleep(nanoseconds: UInt64(2 * Double(NSEC_PER_SEC)))
        print("Tapped to perform async...")
    }
}
