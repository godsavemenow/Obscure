//
//  TelaDeNome.swift
//  Obscure
//
//  Created by Felipe on 04/04/21.
//

import SwiftUI

struct TelaDeNome: View {
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
                    
                    Text("Criar sala")
                        .foregroundColor(.white)
                        .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                        .fontWeight(.semibold)
                        .padding(.trailing, 30)
                    Spacer()
                    
                }.padding()
                
                Spacer()
                
                VStack{
                    Text("Quem ousa me desafiar?")
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
                    Text("Próximo")
                        .font(.title3)
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                        .font(.headline)
                    
                }.frame(width: 328, height: 50)
                .background(Color.red)
                .cornerRadius(5)
                .padding(.bottom, 400)
                
                
                Spacer()
                
            }
            Image("home2")
                .resizable()
                .scaledToFit()
                .frame(width: 148, height: 187)
                .offset(y: 350)
            
        }
    }
}

struct TelaDeNome_Previews: PreviewProvider {
    static var previews: some View {
        TelaDeNome()
    }
}
