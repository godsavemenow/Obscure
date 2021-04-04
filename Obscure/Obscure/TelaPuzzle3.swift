//
//  TelaPuzzle3.swift
//  Obscure
//
//  Created by Felipe on 04/04/21.
//

import SwiftUI
import AVKit

struct TelaPuzzle3: View {
    @State var resposta = ""
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                
                Text("blablebli link de filha da puta do caralho")
                    .foregroundColor(.gray)
                    .padding()
                    .offset(x: 0, y: -100)
                
                VStack {
                    ZStack {
                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                            .fill(Color.white)
                            .frame(width: 328, height: 55)
                        TextField("Código", text: $resposta)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .foregroundColor(.black)
                            .frame(width: 300.0)
                            .background(Color.white)
                            .padding()
                    }
                    
                    Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("Enviar resposta")
                            .foregroundColor(.white)
                        
                    }.frame(width: 328, height: 50)
                    .background(Color.red)
                    .cornerRadius(5)
                    .padding(.top)
                }.offset(x: 0, y: 100)
                
            }
        }
    }
}

struct TelaPuzzle3_Previews: PreviewProvider {
    static var previews: some View {
        TelaPuzzle3()
    }
}
