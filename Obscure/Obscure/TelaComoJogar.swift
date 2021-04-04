//
//  TelaComoJogar.swift
//  Obscure
//
//  Created by Felipe on 03/04/21.
//

import SwiftUI

struct TelaComoJogar: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            ScrollView{
                VStack{
                    HStack{
                        Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                            Text("<")
                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                .fontWeight(.semibold)
                                .padding(.leading)
                        }
                        
                        Spacer()
                        
                        Text("Como jogar")
                            .foregroundColor(.white)
                            .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                            .fontWeight(.semibold)
                            .padding(.trailing, 30)
                        Spacer()
                        
                    }.padding()
                    Text("Obscure é um jogo de enigma do tipo riddle em que você deve solucionar mistérios a cada etapa para vencer. Conte com a ajuda de amigos para desvendar os enigmas antes que o tempo acabe")
                        .font(.system(size: 19))
                        .padding()
                        .foregroundColor(.white)
                    
                    Text("Como ganhar")
                        .foregroundColor(.white)
                        .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                        .fontWeight(.semibold)
                        .padding()
                    
                    Text("Cada etapa possui determinado tempo para que você e seus amigos solucionem o mistério. Caso o enigma não seja solucionado dentro do tempo estabelecido, uma pessoa aleatória é eliminada do jogo. Ganha-se o jogo se ao menos uma pessoa consegue desvendar todos os enigmas antes que o tempo acabe. Fique de olho, alguns enigmas precisam ser solucionados em equipe.")
                        .font(.system(size: 19))
                        .padding()
                        .foregroundColor(.white)
                }
            }
            
        }
    }
    
    struct TelaComoJogar_Previews: PreviewProvider {
        static var previews: some View {
            TelaComoJogar()
        }
    }
}
