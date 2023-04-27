//
//  DetailExhibitionsView.swift
//  Muzeum
//
//  Created by Natalia Wcislo on 27.04.23.
//

import SwiftUI

struct DetailExhibitionsView: View {
    @State var showSheetView = false
    @Environment(\.presentationMode) var presentationMode
    let item_ev: Exhibition
    let screenWidth = UIScreen.main.bounds.size.width * 0.8
    
    var body: some View {
        ScrollView{
            VStack{
                Image(item_ev.image).resizable().frame(height: 280)
            }
            
            VStack{
                Text(item_ev.name).fontWeight(.regular)
                    .font(.custom("Helvetica Neue", size: 28))
            }.padding()
            
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading:
            Button(action: {
                // Navigate to the previous screen
                self.presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "chevron.left.circle.fill")
                    .font(.largeTitle)
                    .foregroundColor(Color(.systemGreen))
                    .accessibility(identifier: "backButton")
            })
        ).edgesIgnoringSafeArea(.all)
        
    }
}

struct DetailExhibitionsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailExhibitionsView(item_ev: exhibitions[1])
    }
}
