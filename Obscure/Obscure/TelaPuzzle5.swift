//
//  TelaPuzzle5.swift
//  Obscure
//
//  Created by Felipe on 03/04/21.
//
import SwiftUI
import AVKit

struct TelaPuzzle5: View {
    @State var resposta = ""
    @State var isPlaying: Bool = false
    @ObservedObject var state:MotionManager = MotionManager()
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
                if(!state.ok){
                Image("puzzle5")
                    .resizable()
                    .frame(width: 304, height: 117)
                }else{
                    Image("resposta5")
                        .resizable()
                        .frame(width: 304, height: 117)
                }

        }
    }
    }
}
    
//struct TelaPuzzle5_Previews: PreviewProvider {
//    static var previews: some View {
//        TelaPuzzle5()
//    }
//}
