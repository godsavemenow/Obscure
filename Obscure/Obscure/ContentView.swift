//
//  ContentView.swift
//  Obscure
//
//  Created by Lucas Silva on 03/04/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            ZStack {
                Color.black
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                VStack{
                    Spacer()
                    VStack {
                        Image("logo")
                            .resizable()
                            .frame(width: 414, height: 333, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    }
                    
                    Spacer()
                    
                    VStack{
                        NavigationLink(destination: TelaDeNome(true)) {
                            Text("Criar sala")
                                .font(.title3)
                                .fontWeight(.medium)
                                .foregroundColor(.white)
                                
                        }.frame(width: 328, height: 50)
                        .background(Color(red: 163/255, green: 29/255, blue: 28/255, opacity: 1))
                        .cornerRadius(5)
                        .padding(.top)
                        .padding(.leading)
                        .padding(.trailing)
                    
                        NavigationLink(destination: TelaDeNome(false)) {
                            Text("Entrar numa sala")
                                .font(.title3)
                                .foregroundColor(.white)
                                .fontWeight(.medium)
                        }.frame(width: 328, height: 50)
                        .background(Color(red: 163/255, green: 29/255, blue: 28/255, opacity: 1))
                        .cornerRadius(5)
                        .padding()
                    }
                    
                    Spacer()
                    
                    VStack {
                        NavigationLink(destination: TelaComoJogar()) {
                            Image("comoJogarButton")
                                .resizable()
                                .scaledToFill()
                                
                        }.frame(width: 328, height: 50)
                        .background(Color.black)
                        //.padding()
                        }
                    Image("home2")
                        .resizable()
                        .frame(width: 148, height: 187)
                        .offset(y: 40)
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
