//
//  Shape.swift
//  Homework 1
//
//  Created by Claire on 1/15/23.
//

import Foundation

struct Sphere {
    var radius: Double
    func spherevolume()-> Double {
        return 4/3*Double.pi*pow(radius,3)
    }
    func boxvolume()-> Double {
        return pow(2*radius, 3)
    }
    func spheresurf()-> Double {
        return 4*Double.pi*pow(radius,2)
    }
    func boxsurf()-> Double {
        return 6*pow(2*radius,2)
    }
}
