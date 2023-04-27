//
//  AtractionView.swift
//  Muzeum
//
//  Created by Natalia Wcislo on 26.04.23.
//

import SwiftUI

struct AtractionView: View {
    
    let items_ex: [Exhibition]
    let items_ev: [Event]
    @State private var showDetails = false
    @State var showSheetView = false
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            
           HStack {
               Text("Naturkunde Berlin").font(.title2).bold().padding()
               
               Spacer()
               
               Button(action: {
                       self.showSheetView.toggle()
                   }) {
                       Text("Buy Ticket")
                           .padding(10)
                           .background(.green)
                           .cornerRadius(20)
                           .foregroundColor(.white)
        
                   }.sheet(isPresented: $showSheetView) {
                       ReservationView(title: "Start")
                   }.padding()
                }
            
            VStack{
                HStack{
                    Text("Events")
                    .font(.title2)
                    Spacer()
                }.padding()
                
                EventsView(items: events)
            }
            
//                HStack{
//                    Text("Future")
//                    .font(.largeTitle)
//                    Spacer()
//                }.padding()
//
//                ScrollView(.horizontal, showsIndicators: false) {
//                    HStack(spacing: 10) {
//                        ForEach(0..<5) { index in
//                            Rectangle()
//                                .fill(.gray)
//                                .frame(width: 250, height: 150)
//                                .cornerRadius(20)
//                        }
//                    }
//                }.padding()
           
            VStack{
                HStack{
                    Text("Exhibition")
                    .font(.title2)
                    Spacer()
                }.padding()
                ExhibitionsView(items: exhibitions)
            }
            
            Spacer()
        }
    }
}

struct AtractionView_Previews: PreviewProvider {
    static var previews: some View {
        AtractionView(items_ex: exhibitions, items_ev: events)
    }
}
