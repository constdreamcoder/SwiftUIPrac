//
//  EmptyState.swift
//  Appetizers
//
//  Created by SUCHAN CHANG on 2023/10/06.
//

import SwiftUI

struct EmptyState: View {
    
    let imageName: String
    let message: String
    
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea(edges: .all)
            VStack {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                
                Text(message)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.secondary)
                    .padding()
            }
            .offset(y: -50)
        }
    }
}

struct EmptyState_Previews: PreviewProvider {
    static var previews: some View {
        EmptyState(imageName: "empty-order", message: "This is our test message.\nI'm making it a little long for testing.")
    }
}

// iOS 17 이상
//#Preview {
//    EmptyState(imageName: "empty-order", message: "This is our test message.\nI'm making it a little long for testing.")
//}
