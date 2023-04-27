//
//  EventsView.swift
//  Muzeum
//
//  Created by Natalia Wcislo on 27.04.23.
//

import SwiftUI

struct EventsView: View {
    let items: [Event]

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack{
            ForEach(items, id: \.id) { item in
                NavigationLink(destination: DetailEventsView(item_ev: item)){
                    ZStack {
                        Image(item.image)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(height: 150)
                           .cornerRadius(20)
                            .overlay(
                                Rectangle()
                                    .cornerRadius(1)
                                    .opacity(0)
                            )
                            .colorMultiply(.gray)
                        Text(item.name)
                            .font(.system(size: 26, weight: .medium, design: .rounded))
                            .foregroundColor(.white)
                        }
                    }
                }
            }
        }.padding() 
    }
}

struct EventsView_Previews: PreviewProvider {
    static var previews: some View {
        EventsView(items: events)
    }
}
