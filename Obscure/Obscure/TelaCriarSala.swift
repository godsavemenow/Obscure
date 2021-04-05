//
//  TelaCriarSala.swift
//  Obscure
//
//  Created by Felipe on 03/04/21.
//

import SwiftUI

struct TelaCriarSala: View {
    var nome:String
    @ObservedObject var room:RoomModelView
    @State var copy = false
    init(_ nome:String, _ ready:Bool){
        self.nome = nome
        self.room = RoomModelView()
        if(ready){
        room.createRoom(playerName: nome)
        }
    }
    var body: some View {
            ZStack {
                Color.black
                    .ignoresSafeArea()
               
                VStack{
                    VStack{
                        VStack{
                            Text ("O código da sua sala é")
                                .foregroundColor(.white)
                                .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                                .padding()
                            
                            
                            Text (room.roomCode)
                                .font(.title3)
                                .foregroundColor(.white)
                                .padding()
                        }
                        
                        
                        
                        Button(action: {UIPasteboard.general.string = room.roomCode
                            copy = true
                        }, label: {
                            Image("Copicod")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 328, height: 50)
                                .background(Color.black)
                                .padding()
                        })
                        .alert(isPresented: $copy) {
                            Alert(title: Text("Código Copiado"), message: Text("Envie o código para até 3 amigos"),
                                  dismissButton: .default(Text("Pode deixar!")))}
                        NavigationLink(destination: TelaSalaDeEspera(true, room.roomCode, nome, true)){
                            Text("Ir para sala")
                                .font(.title3)
                                .fontWeight(.medium)
                                .foregroundColor(.white)
                                
                        }.frame(width: 328, height: 50)
                        .background(Color(red: 163/255, green: 29/255, blue: 28/255, opacity: 1))
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
            }.navigationBarTitle("Começar o jogo")
        }
    }


//struct TelaCriarSala_Previews: PreviewProvider {
//    static var previews: some View {
//        TelaCriarSala("Lucas")
//    }
//}
