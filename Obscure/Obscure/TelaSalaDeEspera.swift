//
//  TelaSalaDeEspera.swift
//  Obscure
//
//  Created by Felipe on 04/04/21.
//

import SwiftUI

struct TelaSalaDeEspera: View {
    
    @State var codigo = ""
    @State var finish = false
    @State var nome = ""
    @State var isOwner = false
    @ObservedObject var room : WaitingRoomModelView = WaitingRoomModelView(code: "", nome:"")
    init(_ finish:Bool, _ codigo:String, _ nome:String, _ isOwner:Bool) {
        self.finish = finish
        self.codigo = codigo
        self.nome = nome
        self.isOwner = isOwner
        self.room = WaitingRoomModelView(code: codigo, nome:nome)
        print(isOwner)
    }
    var body: some View {
        if room.state == "queue" {
        
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                Text("Jogadores")
                    .font(.title3)
                    .fontWeight(.medium)
                    .foregroundColor(.white)
                    .padding()
                
                VStack {
                    ForEach(0..<room.players.count, id: \.self) { count in
                        Text(room.players[count])
                            .foregroundColor(.white)
                    }
                }
                Spacer()
                Button(action: {
                    room.start()
                }, label: {
                    Text("Entrar na sala")
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                        .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                }).frame(width: 328, height: 50)
                .background(Color(red: 163/255, green: 29/255, blue: 28/255, opacity: 1))
                .cornerRadius(5)
                .padding()
                .offset(y: 30)
               
                Image("cortedesangue")
                    .resizable()
                    .frame(width: 328, height: 32.44, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .offset(y: 12)
                
                Image("Hands3")
                    .resizable()
                    .frame(width: 414, height: 306)
                    .offset(y: 35)
            }
        }
    }else if(room.state == "puzzle1"){
        TelaPuzzle1(room, nome: nome)
    }else if(room.state == "puzzle2"){
        TelaPuzzle2(room, nome: nome)
    }else if(room.state == "puzzle3"){
        TelaPuzzle3(room, nome: nome)
    }else if(room.state == "puzzle4"){
        TelaPuzzle4(room, nome: nome)
    }else if(room.state == "puzzle5"){
        TelaPuzzle5(room, nome: nome)
    }    
    }
}

//struct TelaSalaDeEspera_Previews: PreviewProvider {
//    static var previews: some View {
//        TelaSalaDeEspera()
//    }
//}
