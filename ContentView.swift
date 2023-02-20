//
//  ContentView.swift
//  Chapter2
//
//  Created by Timur on 20.02.2023.
//

import SwiftUI

struct ContentView: View {
    @State var message = "Velocity in meters per second "
    let velocity = 20.0
    var body: some View {
        VStack {
            Text(message+"\(velocity)")
            Text("Velocity in kilometer per hour: \(velocityToKilometerPerHour(velocityMpS: velocity))")
        }
        .padding()
    }
    
    func velocityToKilometerPerHour(velocityMpS: Double) -> Double {
        var velocityKpH: Double
        velocityKpH = velocityMpS * 3.6
        return velocityKpH
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
