//
//  TelaPuzzle2.swift
//  Obscure
//
//  Created by Felipe on 03/04/21.
//

import SwiftUI
import AVKit

struct TelaPuzzle2: View {
    @State var errou = false
    @State var resposta = ""
    @State var isPlaying: Bool = false
    @State var audioPlayer: AVAudioPlayer!
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
                Button(action: {
                    if isPlaying == false {
                        self.audioPlayer.play()}
                    else {self.audioPlayer.stop()}
                        
                        self.isPlaying.toggle()}) {
                    Image(self.isPlaying == true ? "pauseButton" : "playerButton")
                        .resizable()
                        .frame(width: 340, height: 105, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .scaledToFit()
                        .padding(.bottom, 200)
                }

               
                
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
                    if(resposta == "Mas eu ja estava dentro"){
                        room.changestate(code: room.roomcode, name: "puzzle3")
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
                
            }.onAppear {
                
                let sound = Bundle.main.path(forResource: "morse", ofType: "mp3")
                self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!)) }

        }
    }
}

//struct TelaPuzzle2_Previews: PreviewProvider {
//    static var previews: some View {
//        TelaPuzzle2()
//
//    }
//}
