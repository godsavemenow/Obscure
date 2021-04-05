//
//  TelaEntrarSala.swift
//  Obscure
//
//  Created by Felipe on 03/04/21.
//

import SwiftUI
class CodeField: ObservableObject {
    @Published var code = ""
}
struct TelaEntrarSala: View {
    @ObservedObject var CodigoSala = CodeField()
    @ObservedObject var room = RoomModelView()
    var nome:String
    @State var finish:Bool = false
    init(_ nome:String) {
        self.nome = nome
    }
    var body: some View {
            ZStack {
                Color.black
                    .ignoresSafeArea()
               
                VStack{
                  
                    Spacer()
                    
                    VStack{
                        Text("Digite o código da sala")
                            .font(.title2)
                            .foregroundColor(.white)
                        
                        ZStack {
                            RoundedRectangle(cornerRadius: 5, style: .continuous)
                                            .fill(Color.white)
                                            .frame(width: 328, height: 55)
                            TextField("Código", text: $CodigoSala.code)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .foregroundColor(.black)
                                .frame(width: 300.0)
                                .background(Color.white)
                                .padding()
                        }
                    }
                    
                        Spacer()
                        
                    NavigationLink(destination: TelaEsperaWaiting(finish, CodigoSala.code, nome, false)) {
                            Text("Entrar na sala")
                                .fontWeight(.medium)
                                .foregroundColor(.white)
                                .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                                
                        }.frame(width: 328, height: 50)
                        .background(Color(red: 163/255, green: 29/255, blue: 28/255, opacity: 1))
                        .cornerRadius(5)
                        .padding(.bottom, 400)
                        .simultaneousGesture(TapGesture().onEnded{
                            room.joinRoom(code: CodigoSala.code, playerName: nome)
                            self.finish = true
                    })
                        .disabled(CodigoSala.code == "")
                        
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
        TelaEntrarSala("Lucas")
    }
}
