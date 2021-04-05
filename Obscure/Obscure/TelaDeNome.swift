//
//  TelaDeNome.swift
//  Obscure
//
//  Created by Felipe on 04/04/21.
//

import SwiftUI
class Nome: ObservableObject {
    @Published var nome = ""
}
struct TelaDeNome: View {
    @ObservedObject var nome = Nome()
    @State var finish = false
    var isCreating:Bool = true
    init(_ isCreating:Bool) {
        self.isCreating = isCreating
    }
    var body: some View {
            ZStack {
                Color(.black)
                    .ignoresSafeArea()
                
                VStack{
                    Spacer()
                    
                    VStack{
                        Text("Quem ousa me desafiar?")
                            .font(.title2)
                            .foregroundColor(.white)
                        
                        ZStack {
                            RoundedRectangle(cornerRadius: 5, style: .continuous)
                                .fill(Color.white)
                                .frame(width: 328, height: 55)
                            TextField("Digite seu nome", text: $nome.nome)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .foregroundColor(.black)
                                .frame(width: 300.0)
                                .background(Color.white)
                                .padding()
                        }
                    }
                    
                    Spacer()
                    if(isCreating){
                        NavigationLink(destination: TelaCriarSala(nome.nome, finish)) {
                            Text("Próximo")
                                .font(.title3)
                                .fontWeight(.medium)
                                .foregroundColor(.white)
                                .font(.headline)
                            
                        }.frame(width: 328, height: 50)
                        .background(Color(red: 163/255, green: 29/255, blue: 28/255, opacity: 1))
                        .cornerRadius(5)
                        .padding(.bottom, 400)
                        .simultaneousGesture(TapGesture().onEnded{
                            finish = true
                        })
                        .disabled(nome.nome == "")
                        
                    } else {
                        NavigationLink(destination: TelaEntrarSala(nome.nome)) {
                            Text("Próximo")
                                .font(.title3)
                                .fontWeight(.medium)
                                .foregroundColor(.white)
                                .font(.headline)
                            
                        }.frame(width: 328, height: 50)
                        .background(Color(red: 163/255, green: 29/255, blue: 28/255, opacity: 1))
                        .cornerRadius(5)
                        .padding(.bottom, 400)
                        .disabled(nome.nome == "")
                    }
                    
                    
                }
                Image("home2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 148, height: 187)
                    .offset(y: 250)
                
        }
    }
}

//struct TelaDeNome_Previews: PreviewProvider {
//    static var previews: some View {
//        TelaDeNome(true)
//    }
//}
