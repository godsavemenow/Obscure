//
//  TelaPuzzle2.swift
//  Obscure
//
//  Created by Felipe on 03/04/21.
//

import SwiftUI

struct TelaPuzzle2: View {
    @State var resposta = ""
    @State var isPlaying: Bool = false
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                Button(action: {
                        self.isPlaying.toggle()}) {
                    Image(self.isPlaying == true ? "pauseButton" : "playerButton")
                        .resizable()
                        .frame(width: 340, height: 105, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .scaledToFit()
                        .padding(.bottom, 200)
                }

               
                
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
                .padding(.leading)
                .padding(.trailing)
                .padding(.bottom, 150)
                
            }
        }
    }
}

struct TelaPuzzle2_Previews: PreviewProvider {
    static var previews: some View {
        TelaPuzzle2()
    }
}
