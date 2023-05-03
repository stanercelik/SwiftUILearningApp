//
//  ListRowView.swift
//  LearningApp
//
//  Created by Taner Çelik on 3.05.2023.
//

import SwiftUI

struct ListRowView: View {
    var secilenKahraman : SuperKahraman
    
    var body: some View {
        HStack{
            
            Image(secilenKahraman.gorselIsmi)
                .resizable()
                .aspectRatio(contentMode: .fill )
                .frame(width: 80, height: 80, alignment: .leading)
                .cornerRadius(10)
            
            Spacer()
            VStack{
                Text(secilenKahraman.isim).font(.title2).multilineTextAlignment(.leading).bold()
                Text(secilenKahraman.gercekIsim).multilineTextAlignment(.leading).bold().font(.title3)
            }
            .padding(.leading)
            Spacer()
            
        }
        .padding(5)
    }
}

struct ListRowView_Previews: PreviewProvider {
    static var previews: some View {
        ListRowView(secilenKahraman: batman).previewLayout(.sizeThatFits)
    }
}
