//
//  ContentView.swift
//  LearningApp
//
//  Created by Taner Çelik on 27.04.2023.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        NavigationView{
            List(superKahramanDizisi) {superHero in
                NavigationLink(
                    destination: DetayView(secilenHero: superHero),
                    label:
                        {
                            ListRowView(secilenKahraman: superHero)
                        
                    })

            }
            .navigationTitle(Text("Navigation Title"))
            
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
