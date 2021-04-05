//
//  RoomViewModel.swift
//  Obscure
//
//  Created by Lucas Silva on 04/04/21.
//

import Foundation
import SwiftUI
import Combine


class WaitingRoomModelView : ObservableObject {
    @Published
    var players: [String] = [];
    @Published
    var roomcode: String = ""
    @Published
    var failMessage: String = "";
    var baseURL = "https://obscureapi.herokuapp.com/"
    @Published
    var state = "queue"
    @Published
    var nome = ""
    
    init(code: String, nome: String) {
        if(code != ""){
        self.nome = nome
        Timer.scheduledTimer(withTimeInterval: 3.0, repeats: true) { timer in
                    self.roomState(code: code);
                }
        }
    }
    func start (){
        let roomStatestr = baseURL + "roomstart?room_code=" + self.roomcode;
        print(roomStatestr)
        guard let roomStateURL = URL(string: roomStatestr) else {
            return;
        }
      
        let session = URLSession.shared
        var request = URLRequest(url: roomStateURL)
        request.httpMethod = "GET"

        
        let task = session.dataTask(with: request as URLRequest, completionHandler: { data, response, error in

        guard error == nil else {
            return
        }

        guard let data = data else {
            return
        }

        do {
        //create json object from data
            if let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [String: Any] {
                if(json["success"] != nil){
                    DispatchQueue.main.async {
                        self.state = json["success"] as! String
                    }
                }
            }
        } catch let error {
            print(error.localizedDescription)
        }
        })

         task.resume()

    }
    
    func roomState (code: String) -> String {
        let roomStatestr = baseURL + "roomstate?room_code=" + code;
        print(roomStatestr)
        guard let roomStateURL = URL(string: roomStatestr) else {
            return ""
        }
      
        let session = URLSession.shared
        var request = URLRequest(url: roomStateURL)
        request.httpMethod = "GET"

        
        let task = session.dataTask(with: request as URLRequest, completionHandler: { data, response, error in

        guard error == nil else {
            return
        }

        guard let data = data else {
            return
        }

        do {
        //create json object from data
            if let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [String: Any] {
                if(json["players"] != nil){
                    DispatchQueue.main.async {
                        self.players = json["players"] as! [String]}
                }
                if(json["state"] != nil){
                    DispatchQueue.main.async {
                        self.state = json["state"] as! String
                        self.roomcode = json["code"] as! String
                    }
                }
                if(json["failed"] != nil){
                    self.failMessage = json["failed"] as! String
                }
            }
        } catch let error {
            print(error.localizedDescription)
        }
        })

         task.resume()

        return ""
    }
    
    func imright (code: String, name: String) -> String {
        let roomStatestr = baseURL + "imright?room_code=" + code+"&&player_name="+name;
        print(roomStatestr)
        guard let roomStateURL = URL(string: roomStatestr) else {
            return ""
        }
      
        let session = URLSession.shared
        var request = URLRequest(url: roomStateURL)
        request.httpMethod = "GET"

        
        let task = session.dataTask(with: request as URLRequest, completionHandler: { data, response, error in

        guard error == nil else {
            return
        }

        guard let data = data else {
            return
        }

        do {
        //create json object from data
            if let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [String: Any] {
                if(json["players"] != nil){
                    DispatchQueue.main.async {
                        self.players = json["players"] as! [String]}
                }
                if(json["state"] != nil){
                    DispatchQueue.main.async {
                        self.state = json["state"] as! String
                        self.roomcode = json["code"] as! String
                    }
                }
                if(json["failed"] != nil){
                    self.failMessage = json["failed"] as! String
                }
            }
        } catch let error {
            print(error.localizedDescription)
        }
        })

         task.resume()

        return ""
    }
    func changestate (code: String, name: String) -> String {
        let roomStatestr = baseURL + "changestate?room_code=" + code+"&&player_name="+name;
        print(roomStatestr)
        guard let roomStateURL = URL(string: roomStatestr) else {
            return ""
        }
      
        let session = URLSession.shared
        var request = URLRequest(url: roomStateURL)
        request.httpMethod = "GET"

        
        let task = session.dataTask(with: request as URLRequest, completionHandler: { data, response, error in

        guard error == nil else {
            return
        }

        guard let data = data else {
            return
        }

        do {
        //create json object from data
            if let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [String: Any] {
                if(json["players"] != nil){
                    DispatchQueue.main.async {
                        self.players = json["players"] as! [String]}
                }
                if(json["state"] != nil){
                    DispatchQueue.main.async {
                        self.state = json["state"] as! String
                        self.roomcode = json["code"] as! String
                    }
                }
                if(json["failed"] != nil){
                    self.failMessage = json["failed"] as! String
                }
            }
        } catch let error {
            print(error.localizedDescription)
        }
        })

         task.resume()

        return ""
    }
}
