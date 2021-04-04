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
                Image("puzzle5")
                    .resizable()
                    .frame(width: 304, height: 117)

               
            

        }
    }
    }
}
    
struct TelaPuzzle5_Previews: PreviewProvider {
    static var previews: some View {
        TelaPuzzle5()
    }
}
