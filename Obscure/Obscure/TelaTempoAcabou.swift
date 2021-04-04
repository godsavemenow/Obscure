//
//  TelaTempoAcabou.swift
//  Obscure
//
//  Created by Felipe on 04/04/21.
//

import SwiftUI

struct TelaTempoAcabou: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                Text("Seu tempo acabou")
                    .foregroundColor(.white)
                    .font(.system(size: 28))
                    .padding()
                
                Text("Espero você dentro do seu espelho")
                    .foregroundColor(.white)
                    .font((.system(size: 19)))
                    .padding()
                
                Spacer()
                
                Image("ilustrafinal")
                    .resizable()
                    .frame(width: 219, height: 567)
                    .offset(y: 35)
                    
            }
        }
    }
}

struct TelaTempoAcabou_Previews: PreviewProvider {
    static var previews: some View {
        TelaTempoAcabou()
    }
}
