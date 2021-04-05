//
//  TelaPuzzle3.swift
//  Obscure
//
//  Created by Felipe on 04/04/21.
//
import SwiftUI
import AVKit

struct TelaPuzzle3: View {
    @State var resposta = ""
    @State var errou = false
    @ObservedObject var room:WaitingRoomModelView
    @State var nome = ""
    init(_ room:WaitingRoomModelView, nome:String){
        self.room = room
        self.nome = nome
    }
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                Link("https://youtu.be/XviaCKZhpqg", destination: URL(string: "https://youtu.be/XviaCKZhpqg")!)
                    .foregroundColor(.gray)
                    .padding()
                    .offset(x: 0, y: -100)
                VStack {
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
                        if(resposta == "Fiquei de pé no canto escuro do seu quarto"){
                            room.changestate(code: room.roomcode, name: "puzzle4")
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
}

//struct TelaPuzzle3_Previews: PreviewProvider {
//    static var previews: some View {
//        TelaPuzzle3()
//    }
//}
