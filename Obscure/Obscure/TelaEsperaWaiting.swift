//
//  TelaEsperaWaiting.swift
//  Obscure
//
//  Created by Felipe on 04/04/21.
//

import SwiftUI

struct TelaEsperaWaiting: View {
    
    @State var jogador1 = "Ana"
    @State var jogador2 = "Bruno"
    @State var jogador3 = "Carol"
    @State var jogador4 = "Daniel"
    @State var jogador5 = "Elaine"
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                HStack{
                    Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("<")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .fontWeight(.semibold)
                            .padding(.leading)
                    }
                    
                    Spacer()
                    
                    Text("Criar sala")
                        .foregroundColor(.white)
                        .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                        .fontWeight(.semibold)
                        .padding(.trailing, 30)
                    Spacer()
                    
                }.padding()
                
                Spacer()
                
                Text("Jogadores")
                    .font(.title3)
                    .fontWeight(.medium)
                    .foregroundColor(.white)
                    .padding()
                
                VStack {
                    Text("\(jogador1)")
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                        .padding(.top, 10)
                    Text("\(jogador2)")
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                        .padding(.top, 10)
                    Text("\(jogador3)")
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                        .padding(.top, 10)
                    Text("\(jogador4)")
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                        .padding(.top, 10)
                    Text("\(jogador5)")
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                        .padding(.top, 10)
                }
                Spacer()
                
                Text("Aguarde o anfitrião iniciar o jogo")
                    .font(.system(size: 19))
                    .foregroundColor(.white)
                    .offset(y: 20)
                
                Image("cortedesangue")
                    .resizable()
                    .frame(width: 280, height: 32.44, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .offset(y: 12)
                
                Image("Hands3")
                    .resizable()
                    .frame(width: 414, height: 306)
                    .offset(y: 35)
            }
        }
    }
}

struct TelaEsperaWaiting_Previews: PreviewProvider {
    static var previews: some View {
        TelaEsperaWaiting()
    }
}
