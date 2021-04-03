//
//  ContentView.swift
//  Obscure
//
//  Created by Lucas Silva on 03/04/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack{
                Spacer()
                VStack {
                    Circle()
                        .foregroundColor(.white)
                        .frame(width: 239, height: 239, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                }
                
                Spacer()
                
                VStack{
                    Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("Criar sala")
                            .foregroundColor(.white)
                            
                    }.frame(width: 328, height: 50)
                    .background(Color.red)
                    .cornerRadius(5)
                    .padding(.top)
                    .padding(.leading)
                    .padding(.trailing)
                
                    Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("Entrar numa sala")
                            .foregroundColor(.white)
                            
                    }.frame(width: 328, height: 50)
                    .background(Color.red)
                    .cornerRadius(5)
                    .padding()
                }
                
                Spacer()
                
                VStack {
                    Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("COMO JOGAR")
                            .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                            .underline()
                            .foregroundColor(.white)
                    }
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
