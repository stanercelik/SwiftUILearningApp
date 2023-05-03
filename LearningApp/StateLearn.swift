//
//  StateLearn.swift
//  LearningApp
//
//  Created by Taner Çelik on 29.04.2023.
//

import SwiftUI

struct StateLearn: View {
    
    //State değişkeni ekranda da değiştirebilmemize yarıyor
    //@State var isim = "Salim Taner Çelik"
    @State var isim = ""
    var body: some View {
        VStack {
            Text(isim)
                .font(.largeTitle)
            
            /*Button {
                if isim == "Yasemin Çanakçı" {
                    isim = "Salim Taner Çelik"
                }
                else {
                    isim = "Yasemin Çanakçı"
                }
              
            } label: {
                Text("isim değiştir")
                    .font(.subheadline)
            }*/

            TextField("test", text: self.$isim)
            //Burada binding yapmış yapmış olduk $isim yaparak ki zaten textfield kullanınca text kısmında binding yap diyor.
                .multilineTextAlignment(.center)
                .border(.black)
                .padding()
                
            
        }

        
        
        
    }
}

struct StateLearn_Previews: PreviewProvider {
    static var previews: some View {
        StateLearn()
    }
}
