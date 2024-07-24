//
//  GenerateButton.swift
//  BabyNameGen
//
//  Created by Breno R R on 21/07/2024.
//

import SwiftUI

struct GenerateButton: View {
    let gender: Gender
    @Binding var isLoading: Bool
    let action: () async -> Void
    
    
    var body: some View {
        AsyncButton {
            Text(gender.rawValue)
                .frame(width: 100, height: 40)
                .background(isLoading ? Color.gray : Color.blue)
                .cornerRadius(15)
                .foregroundStyle(.white)
        } action: {
            await action()
        }
        .disabled(isLoading)
    }
}

#Preview {
    GenerateButton(gender: .FEMALE, isLoading: .constant(false)) {
        print("OK")
    }
}
