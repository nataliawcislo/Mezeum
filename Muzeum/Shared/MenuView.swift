//
//  MenuView.swift
//  Muzeum
//
//  Created by Natalia Wcislo on 26.04.23.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        ZStack{
            
            VStack{
                Rectangle()
                    .frame(height: 70)
                    .cornerRadius(20)
                    .foregroundColor(.green).opacity(0.9)
                    .padding()
            }

            HStack{
//                 Button(action: {}){
//                     Image(systemName: "hourglass.bottomhalf.filled")
//                     .resizable()
//                     .frame(width: 30, height: 30)
//                     .foregroundColor(.white).opacity(0.8)
//                 }.padding()
                 
                 Spacer()
                
                 Button(action: {}){
                     Image(systemName: "map.fill")
                     .resizable()
                     .frame(width: 30, height: 30)
                     .foregroundColor(.white)
                 }.padding()
                 
                Spacer()
                
                Button(action: {}){
                    Image(systemName: "house.fill")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.white)
                }.padding()
                
                Spacer()
                
                Button(action: {}){
                     Image(systemName: "atom")
                     .resizable()
                     .frame(width: 30, height: 30)
                     .foregroundColor(.white)
                 }.padding()
                 
                 Spacer()

                Button(action: {}){
                    Image(systemName: "info.circle.fill")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.white)
                }.padding()
                
                Spacer()
                
            }.padding()
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
