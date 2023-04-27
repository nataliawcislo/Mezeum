//
//  MapView.swift
//  Muzeum
//
//  Created by Natalia Wcislo on 27.04.23.
//

import SwiftUI

struct MapView: View {
  
    var body: some View {
        ScrollView{
            VStack{
                Text("First Floor")
                .font(.largeTitle)
            }
            VStack{
                Image("1F").resizable()
            }
            
            VStack{
                
            }
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
