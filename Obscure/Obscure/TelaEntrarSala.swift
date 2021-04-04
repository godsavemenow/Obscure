//
//  TelaEntrarSala.swift
//  Obscure
//
//  Created by Felipe on 03/04/21.
//

import SwiftUI

struct TelaEntrarSala: View {
    @State var CodigoSala = ""
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
           
            VStack{
                HStack{
                    Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("<")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .fontWeight(.semibold)
                            .padding(.leading)
                    }
                    
                    Spacer()
                    
                    Text("Entrar numa sala")
                        .foregroundColor(.white)
                        .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                        .fontWeight(.semibold)
                        .padding(.trailing, 30)
                    Spacer()
                    
                }.padding()
                
                Spacer()
                
                VStack{
                    Text("Digite o código da sala")
                        .font(.title2)
                        .foregroundColor(.white)
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                                        .fill(Color.white)
                                        .frame(width: 328, height: 55)
                        TextField("Código", text: $CodigoSala)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .foregroundColor(.black)
                            .frame(width: 300.0)
                            .background(Color.white)
                            .padding()
                    }
                }
                
                    Spacer()
                    
                    Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("Entrar na sala")
                            .foregroundColor(.white)
                            
                    }.frame(width: 328, height: 50)
                    .background(Color.red)
                    .cornerRadius(5)
                    .padding(.bottom, 400)
                    
                    
                    Spacer()
                
                }
            Image("Hands3")
                .resizable()
                .scaledToFit()
                .frame(width: 414, height: 316)
                .offset(y: 300)
            
            }
        }
    }

struct TelaEntrarSala_Previews: PreviewProvider {
    static var previews: some View {
        TelaEntrarSala()
    }
}
