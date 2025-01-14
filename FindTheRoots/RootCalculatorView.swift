//
//  ContentView.swift
//  FindTheRoots
//
//  Created by Isla Russell-Howes on 2025-01-14.
//

import SwiftUI

struct RootCalculatorView: View {
    
    // Mark: Stroed properties
    @State var a: Double = 1
    @State var b: Double = 1
    @State var c: Double = 1
    
    //Mark: Computer properties

    let discriminant = b * b - 4 * a * c
    
    if discriminant < 0 {
        return "No real roots."
    } else {
        let x1 = (b * -1 - discriminant.squareRoot() ) / (2 * a)
        let x2 = (b * -1 + discriminant.squareRoot() ) / (2 * a)
        
        return "x ≈ \(x1 .formatted(.number.precision(.fractionlength(2)))) and x ≈ \(x2.formatted(.number.precision(.fractionlength(2))))"
    }
    
    
    
    
    var body: some View {
        NavigationStack {
            
            
            VStack {
                
                Image("quad")
                    .resizable()
                    .scaledToFit()
                
                
                HStack(alignment: .top) {
                    
                    VStack{
                        Text("a: \(a.formatted(.number.precision(.fractionLength(1)))) ")
                        Slider(value: $a, in: -100...100) {
                        }
                        
                    }
                    VStack{
                        Text("b: \(b.formatted(.number.precision(.fractionLength(1))))")
                        Slider(value: $b, in: -100...100) {
                        }
                        
                    }
                    VStack{
                        Text("c: \(c.formatted(.number.precision(.fractionLength(1))))")
                        Slider(value: $c, in: -100...100) {
                        }
                    }
                }
                .padding(.horizontal)
            }
            .navigationTitle("Find the Roots")
        }
    }
}

#Preview {
    RootCalculatorView()
}
