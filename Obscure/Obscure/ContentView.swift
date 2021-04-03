//
//  ContentView.swift
//  Obscure
//
//  Created by Lucas Silva on 03/04/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Spacer()
            VStack {
                Text("Logo")
            }
            
            Spacer()
            
            VStack{
                Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Criar sala")
                        .foregroundColor(.white)
                        
                }.frame(width: 328, height: 62)
                .background(Color.black)
                .cornerRadius(10)
                .padding(.top)
                .padding(.leading)
                .padding(.trailing)
            
                Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Entrar numa sala")
                        .foregroundColor(.white)
                        
                }.frame(width: 328, height: 62)
                .background(Color.black)
                .cornerRadius(10)
                .padding()
            }
            
            Spacer()
            
            VStack {
                Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Como jogar")
                }
            }.padding(.bottom)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
