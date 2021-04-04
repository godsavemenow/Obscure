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
    @State var audioPlayer: AVAudioPlayer!
    
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
                    TextField("Código", text: $resposta)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .foregroundColor(.black)
                        .frame(width: 300.0)
                        .background(Color.white)
                        .padding()
                }
                
                Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Enviar resposta")
                        .foregroundColor(.white)
                        
                }.frame(width: 328, height: 50)
                .background(Color.red)
                .cornerRadius(5)
                .padding(.top)
                .padding(.leading)
                .padding(.trailing)
                .padding(.bottom, 150)
                
                
                }
                
            }.onAppear {
                
                let sound = Bundle.main.path(forResource: "rain-2", ofType: "mp3")
                self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!)) }

        }
    }

struct TelaPuzzle5_Previews: PreviewProvider {
    static var previews: some View {
        TelaPuzzle5()
    }
}
