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
    
    //Mark: Computer properties

    
    
    var body: some View {
        NavigationStack {
            
            
            VStack {
                
                
                
                Image("quad")
                    .resizable()
                    .scaledToFit()
                
                HStack(alignment: .top) {
                    
                    
                    VStack {
                        Slider(value: $a, in: -100...100, step: 0.1,
                               minimumValueLabel: Text("-100"),
                               maximumValueLabel: Text("100"))
                        Text("a: \(Int(a))")
                            .padding(.bottom)
                        
                        }
                    VStack {
                    }
                    VStack {
                        
                    }
                    
                }
            }
        }
        .navigationTitle("Find the Roots")
    }
}

#Preview {
    RootCalculatorView()
}
