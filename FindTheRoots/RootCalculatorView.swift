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
    
    
    
    var body: some View {
        NavigationStack {
            
            
            VStack {
                
                
                
                Image("quad")
                    .resizable()
                    .scaledToFit()
                
                HStack(alignment: .top) {
                    
                    Slider(value: $a, in: -100...100) {
                        Text("a")
                        
                    }
                    
                    Slider(value: $b, in: -100...100) {
                        Text("b")
                        
                    }
                    
                    Slider(value: $c, in: -100...100) {
                        Text("c")
                    }
                    
                    
                } .padding(.horizontal)
            }
        }
        .navigationTitle("Find the Roots")
    }
}

#Preview {
    RootCalculatorView()
}
