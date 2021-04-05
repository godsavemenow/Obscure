//
//  TelaPuzzle1.swift
//  Obscure
//
//  Created by Felipe on 03/04/21.
//

import SwiftUI
class imagename: ObservableObject {
    @Published var nome = ""
}
class myidd: ObservableObject {
    @Published var nomes :Int = 0
}
struct TelaPuzzle1: View {
    
    @State var resposta = ""
    @ObservedObject var room:WaitingRoomModelView
    var myID:Int = 0
    @State var myImage:String = ""
    @State var shit:imagename = imagename()
    @State var errou:Bool = false
    @ObservedObject var aaa:myidd = myidd()
    @State var namee = ""
    init(_ room:WaitingRoomModelView, nome:String){
        self.room = room
        print(self.room.players)
        print(self.room.nome)
        print()
        self.namee = nome
        var counta:Int = 0
        while counta < self.room.players.count {
            if(self.room.players[counta] == self.namee){
                self.aaa.nomes = counta+1
            }
            counta=counta+1
        }
        let count = "\(self.room.players.count)"
        let id = "\(self.room.players.firstIndex(of: self.room.nome)! + 1)"
//        print(self.aaa.nomes)
//        print(self.namee)
        self.myImage="E"+count+"."+id
        self.shit.nome = "E"+count+"."+id
    }
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                Image(self.shit.nome)
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
                    if(resposta == "você até trancou a porta quando chegou"){
                        room.imright(code: room.roomcode, name: room.nome)
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
            }
        }
    }
}

//struct TelaPuzzle1_Previews: PreviewProvider {
//    static var previews: some View {
//        TelaPuzzle1(room)
//    }
//}
