//
//  TelaCriarSala.swift
//  Obscure
//
//  Created by Felipe on 03/04/21.
//

import SwiftUI

struct TelaCriarSala: View {
    
    @State var Codigo = "425317"
    
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
                    
                    Text("Nova sala")
                        .foregroundColor(.white)
                        .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                        .fontWeight(.semibold)
                        .padding(.trailing, 30)
                    Spacer()
                    
                }.padding()
                
                
                VStack{
                    VStack{
                        Text ("O código da sua sala é")
                            .foregroundColor(.white)
                            .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                            .padding()
                        
                        
                        Text (Codigo)
                            .font(.title3)
                            .foregroundColor(.white)
                            .padding()
                    }
                    
                    
                    
                    Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                        Image("Copicod")
                            .resizable()
                            .scaledToFill()
                            
                    }.frame(width: 328, height: 50)
                    .background(Color.black)
                    .padding()
                    
                    
                    Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("Começar o jogo")
                            .font(.title3)
                            .fontWeight(.medium)
                            .foregroundColor(.white)
                            
                    }.frame(width: 328, height: 50)
                    .background(Color.red)
                    .cornerRadius(5)
                    .padding(.top)
                    .padding(.leading)
                    .padding(.trailing)
                    
                    
                    Spacer()
                }
                Image("Hands3")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 414, height: 316)
                    .offset(y: 40)
                    
            }
        }
    }
}

struct TelaCriarSala_Previews: PreviewProvider {
    static var previews: some View {
        TelaCriarSala()
    }
}
