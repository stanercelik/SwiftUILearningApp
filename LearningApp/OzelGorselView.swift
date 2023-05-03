//
//  OzelGorselView.swift
//  LearningApp
//
//  Created by Taner Çelik on 2.05.2023.
//

import SwiftUI

struct OzelGorselView: View {
    var image: Image
    var body: some View {
        image
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 5))
            .shadow(radius: 12)
    }
}

struct OzelGorselView_Previews: PreviewProvider {
    static var previews: some View {
        OzelGorselView(image: Image("hulk"))
    }
}
