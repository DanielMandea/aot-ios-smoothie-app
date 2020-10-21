//
//  ContentView.swift
//  Shared
//
//  Created by Daniel Mandea on 15/07/2020.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel: ViewModel
    
    @ViewBuilder var body: some View {
        #if os(iOS)
        NavigationView() {
            List(viewModel.entries) { smoothie in
                SmoothieRow(smoothie: smoothie)
            }
            .navigationBarTitle(Text("AOT Smoothies 🍹"))
        }
        #else
        VStack {
            Text("AOT Smoothies 🍹")
            List(viewModel.entries) { smoothie in
                SmoothieRow(smoothie: smoothie)
            }
        }
        #endif
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: ViewModel())
    }
}
