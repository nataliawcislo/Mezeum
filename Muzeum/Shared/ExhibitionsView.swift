//
//  ExhibitionsView.swift
//  Muzeum
//
//  Created by Natalia Wcislo on 27.04.23.
//

import SwiftUI

struct ExhibitionsView: View {
    let items: [Exhibition]

    var body: some View {
        ScrollView{
            ForEach(items, id: \.id) { item in
                NavigationLink(destination: DetailExhibitionsView(item_ev: item)){
                    ZStack {
                        Image(item.image)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(height: 200)
                           .cornerRadius(1)
                            .overlay(
                                Rectangle()
                                    .cornerRadius(1)
                                    .opacity(0)
                            )
                            .colorMultiply(.gray)
                        Text(item.name)
                            .font(.system(size: 32, weight: .medium, design: .rounded))
                            .foregroundColor(.white)
                    }
                }
            }
        }
    }
}


struct ExhibitionsView_Previews: PreviewProvider {
    static var previews: some View {
        ExhibitionsView(items: exhibitions)
    }
}


