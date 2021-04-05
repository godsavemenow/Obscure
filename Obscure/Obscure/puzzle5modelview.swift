//
//  puzzle5modelview.swift
//  Obscure
//
//  Created by Lucas Silva on 04/04/21.
//

import Foundation
import Combine
import CoreMotion
import AudioToolbox

class MotionManager: ObservableObject {

    private var motionManager: CMMotionManager


    @Published
    var z: Double = 0.0
    @Published
    var ok:Bool = false
   
    init() {
        self.motionManager = CMMotionManager()
        self.motionManager.accelerometerUpdateInterval = 0.1
        self.motionManager.startAccelerometerUpdates(to: OperationQueue.current!) { (data, error) in
            if let accelerometerData = data {
                
                self.z = accelerometerData.acceleration.z
               
                if(abs(self.z)>0.9){
                        self.ok = true
                    }
            }

        }

    }
}
