//
//  TelaIntroGame.swift
//  Obscure
//
//  Created by Felipe on 03/04/21.
//

import SwiftUI

struct TelaIntroGame: View {
    
    @State var nomeDoJogador = "Maurício"
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                Text("Compre o seu caixão. Eu estou indo atrás de você, \(nomeDoJogador).")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding()
                
                Text("Para ser mais divertido, você e seus amigos devem resolver os meus enigmas. Se forem rápidos, vocês se livram. Do contrário, as covas que estão abertas serão para vocês.")
                    .font(.title2)
                    .fontWeight(.regular)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding()
                
//                Text("Se forem rápidos, vocês se livram. Do contrário, as covas que estão abertas serão para vocês.")
//                    .font(.title2)
//                    .fontWeight(.semibold)
//                    .foregroundColor(.white)
//                    .multilineTextAlignment(.center)
//                    .padding()
            }
        }
    }
}

struct TelaIntroGame_Previews: PreviewProvider {
    static var previews: some View {
        TelaIntroGame()
    }
}
