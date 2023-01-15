//
//  ContentView.swift
//  Homework 1
//
//  Created by Claire on 1/15/23.
//

import SwiftUI

struct ContentView: View {
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
    @State var number: Int
    @State var object=Sphere(radius: 2.0)
    var body: some View {
        
        VStack {
            Text("Volume of Sphere:")
            Text("\(object.spherevolume())")
            Text("Volume of Bounding Box:")
            Text("\(object.boxvolume())")
            Text("Surface Area of Sphere:")
            Text("\(object.spheresurf())")
            Text("Surface Area of Bounding Box:")
            Text("\(object.boxsurf())")
            
            TextField("Enter radius", value: $object.radius, format: .number)
            Button("Add 10", action: add10)
        }
        .padding()
    }
    func add10()->Void {
        object.radius = object.radius+10
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(number: 10)
    }
}
