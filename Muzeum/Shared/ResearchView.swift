//
//  ResearchView.swift
//  Muzeum
//
//  Created by Natalia Wcislo on 27.04.23.
//

import SwiftUI

struct ResearchView: View {
    var body: some View {
        VStack() {
        HStack{
            Text("Exhibitions")
            .font(.largeTitle)
            Spacer()
        }.padding()
            ForEach(0..<3) { index in
                Rectangle()
                    .fill(.red)
                    .frame(width: 340, height: 150)
                    .cornerRadius(20)
            }
            Spacer()
        }
    }
}

struct ResearchView_Previews: PreviewProvider {
    static var previews: some View {
        ResearchView()
    }
}
