//
//  FavoriteButton.swift
//  Landmark
//
//  Created by Jorge de Carvalho on 18/01/23.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundColor(isSet ? .yellow : .green)
        }
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            FavoriteButton(isSet: .constant(true))
            FavoriteButton(isSet: .constant(false))
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
