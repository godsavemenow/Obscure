//
//  RoomViewModel.swift
//  Obscure
//
//  Created by Lucas Silva on 04/04/21.
//

import Foundation
import SwiftUI
import Combine


class RoomModelView : ObservableObject {
    @Published
    var roomCode: String = "";
    @Published
    var failMessage: String = "";
    @Published
    var joined:Bool = false;
    var baseURL = "https://obscureapi.herokuapp.com/"

    
    func createRoom (playerName: String) -> String {
        let createRoomstr = baseURL + "createroom?player_name=" + playerName;
        print(createRoomstr)
        guard let createRoomURL = URL(string: createRoomstr) else {
            return ""
        }
      
        let session = URLSession.shared
        var request = URLRequest(url: createRoomURL)
        request.httpMethod = "POST"

        
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
              print(json)
                print(json["success"]!)
                if(json["success"] != nil){
                    DispatchQueue.main.async {
                        self.roomCode = json["success"] as! String}
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
    func joinRoom (code:String,playerName: String) -> String {
        let joinRoomstr = baseURL + "joinroom?room_code=" + code+"&&player_name="+playerName;
        print(joinRoomstr)
        guard let joinRoomURL = URL(string: joinRoomstr) else {
            return ""
        }
      
        let session = URLSession.shared
        var request = URLRequest(url: joinRoomURL)
        request.httpMethod = "POST"

        
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
              print(json)
                print(json["success"]!)
                if(json["success"] != nil){
                    DispatchQueue.main.async {
                        self.roomCode = json["success"] as! String}
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
