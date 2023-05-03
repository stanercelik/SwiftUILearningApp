//
//  DetayView.swift
//  LearningApp
//
//  Created by Taner Çelik on 29.04.2023.
//

import SwiftUI

struct DetayView: View {
    var secilenHero : SuperKahraman
    
    var body: some View {
            VStack{
                
                MapView(coordinate: secilenHero.koordinatLokasyonu)
                    .frame(  height: UIScreen.main.bounds.height * 0.3 )
                    .edgesIgnoringSafeArea(.top)
                
                OzelGorselView(image: Image(secilenHero.gorselIsmi))
                    .frame(width: UIScreen.main.bounds.width * 0.5, height: UIScreen.main.bounds.height * 0.2 , alignment: .center)
                    .offset(y: UIScreen.main.bounds.height * -0.25)
                    
                
                
                VStack{
                    HStack{
                        Text(secilenHero.isim)
                            .font(.title)
                            .foregroundColor(.brown)
                            .frame(maxHeight: 50)
                            .bold()
                        Spacer()
                        Text(secilenHero.gercekIsim)
                            .font(.title2)
                            .foregroundColor(.black)
                    }
                    
                    HStack{
                        //Spacer()
                        Text(secilenHero.sehir)
                            .font(.title3)
                            .foregroundColor(.black)
                        Spacer()
                        Text(secilenHero.meslek)
                            .font(.title3)
                            .foregroundColor(.brown)
                        //Spacer()
                    }

                }
                .offset(y: UIScreen.main.bounds.height * -0.2)
                .padding()
                Spacer()

            }
        
        
                
    }
}

struct DetayView_Previews: PreviewProvider {
    static var previews: some View {
        DetayView(secilenHero: wonderWoman )
    }
}
