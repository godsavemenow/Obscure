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
                Text("But I must explain to you how all this mistaken idea of denouncing pleasure and comer o cu de quem tá lendo was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?")
                    .font(.title3)
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
