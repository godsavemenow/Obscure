//
//  TelaGanhou.swift
//  Obscure
//
//  Created by Felipe on 04/04/21.
//

import SwiftUI

struct TelaGanhou: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                
                Text("Você venceu")
                    .foregroundColor(.white)
                    .font(.system(size: 28))
                    .padding(.bottom, 20)
                
                Text("Por pura sorte.")
                    .foregroundColor(.white)
                    .font((.system(size: 19)))
                
                Text("Não ache que conseguirá se livrar outra vez.")
                    .foregroundColor(.white)
                    .font((.system(size: 19)))
                
                Spacer()
                
                Image("ganhou")
                    .resizable()
                    .frame(width: 400, height: 600)
                    .offset(y: 35)
                    
            }
        }
    }
}

struct TelaGanhou_Previews: PreviewProvider {
    static var previews: some View {
        TelaGanhou()
    }
}
