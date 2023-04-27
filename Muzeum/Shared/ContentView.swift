//
//  ContentView.swift
//  Shared
//
//  Created by Natalia Wcislo on 26.04.23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            AtractionView(items_ex: exhibitions, items_ev: events)
       
            VStack{
                Spacer()
                MenuView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
