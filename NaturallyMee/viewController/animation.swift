//
//  animation.swift
//  NaturallyMee
//
//  Created by Sarin Swift on 7/19/18.
//  Copyright © 2018 Sarin Swift. All rights reserved.
//

import Foundation
import UIKit

extension UIButton  {
    func pulsate() {

        let pulse = CASpringAnimation(keyPath: "transform.scale")
        pulse.duration = 0.7
        pulse.fromValue = 0.95
        pulse.toValue = 1.1
        pulse.autoreverses = true
        pulse.repeatCount = 2
        pulse.initialVelocity = 0.5
        pulse.damping = 1.0
        
        layer.add(pulse, forKey: nil)
        
    }
}

 extension UIView {
    func pulsateCell(){
       
            let pulse = CASpringAnimation(keyPath: "transform.scale")
            pulse.duration = 3
            pulse.fromValue = 0.95
            pulse.toValue = 2.0
            pulse.autoreverses = true
            pulse.repeatCount = 2
            pulse.initialVelocity = 0.5
            pulse.damping = 1.0
            layer.add(pulse, forKey: nil)
        
        layer.add(pulse,forKey: nil)
        }

}
