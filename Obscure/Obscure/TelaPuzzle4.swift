//
//  TelaPuzzle4.swift
//  Obscure
//
//  Created by Felipe on 03/04/21.
//

import SwiftUI

struct TelaPuzzle4: View {
    @State var resposta = ""
    @ObservedObject var room:WaitingRoomModelView
    @State var nome = ""
    @State var errou = false
    init(_ room:WaitingRoomModelView, nome:String){
        self.room = room
        self.nome = nome
    }

    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                
                Image("F1")
                    .resizable()
                    .frame(width: 250, height: 250, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .scaledToFit()
                    .padding(.bottom, 50)
                
                ZStack {
                    RoundedRectangle(cornerRadius: 5, style: .continuous)
                                    .fill(Color.white)
                                    .frame(width: 328, height: 55)
                    TextField("Resposta", text: $resposta)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .foregroundColor(.black)
                        .frame(width: 300.0)
                        .background(Color.white)
                        .padding()
                }
                
                
                Button(action: {
                    if(resposta == "Mas a última coisa que lhe digo é esta"){
                        room.changestate(code: room.roomcode, name: "puzzle5")
                    }else{
                        errou = true
                    }
                }, label: {
                    Text("Enviar resposta")
                        .foregroundColor(.white)
                }).frame(width: 328, height: 50)
                .background(Color.red)
                .cornerRadius(5)
                .padding(.top)
                .padding(.leading)
                .padding(.trailing)
                .padding(.bottom, 150)
                .alert(isPresented: $errou) {
                    Alert(title: Text("Resposta Errada"), message: Text("Estou chegando mais perto"),
                          dismissButton: .default(Text("Tente outra resposta")))}
            }.offset(x: 0, y: 100)
                
            }
        }
    }


//struct TelaPuzzle4_Previews: PreviewProvider {
//    static var previews: some View {
//        TelaPuzzle4()
//    }
//}
