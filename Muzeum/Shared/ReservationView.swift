//
//  ReservationView.swift
//  Muzeum
//
//  Created by Natalia Wcislo on 27.04.23.
//

import SwiftUI

struct ReservationView: View {
        
    let title: String
    @State var event = Date()

    var body: some View {
        ScrollView(showsIndicators: false) {
            DatePicker("Data", selection: $event).datePickerStyle(GraphicalDatePickerStyle()).accentColor(.green)
            
            VStack{
                
                HStack{
                    Text("Type of Ticket")
                    .font(.title)
                    Spacer()
                }.padding()
                
               HStack{
                   
                   VStack{
                       HStack{
                           Text("Normal Ticket").bold()
                           Spacer()
                       }
                       HStack{
                       Text("20.00€")
                           Spacer()
                       }
                   }
                   
                   Spacer()
                   
                   Button(action: {}){
                        Image(systemName: "minus.circle.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.green).opacity(0.8)
                    }.padding()
                    
                    Text("0")
                    
                    Button(action: {}){
                        Image(systemName: "plus.circle.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.green).opacity(0.8)
                    }.padding()
                   
                }.padding(.horizontal)
            
                HStack{
                    
                    VStack{
                        HStack{
                            Text("Reducted Ticket").bold()
                            Spacer()
                        }
                        HStack{
                        Text("20.00€")
                            Spacer()
                        }
                    }
                        
                     Spacer()
                     
                     Button(action: {}){
                         Image(systemName: "minus.circle.fill")
                         .resizable()
                         .frame(width: 30, height: 30)
                         .foregroundColor(.green).opacity(0.8)
                     }.padding()
                     
                     Text("0")
                     
                     Button(action: {}){
                         Image(systemName: "plus.circle.fill")
                         .resizable()
                         .frame(width: 30, height: 30)
                         .foregroundColor(.green).opacity(0.8)
                     }.padding()
                    
                }.padding(.horizontal)
                
                HStack{
                    
                    VStack{
                        HStack{
                            Text("Group Ticket").bold()
                            Spacer()
                        }
                        HStack{
                        Text("20.00€")
                            Spacer()
                        }
                    }
                     Spacer()
                     
                     Button(action: {}){
                         Image(systemName: "minus.circle.fill")
                         .resizable()
                         .frame(width: 30, height: 30)
                         .foregroundColor(.green).opacity(0.8)
                     }.padding()
                     
                     Text("0")
                     
                     Button(action: {}){
                         Image(systemName: "plus.circle.fill")
                         .resizable()
                         .frame(width: 30, height: 30)
                         .foregroundColor(.green).opacity(0.8)
                     }.padding()
                    
                }.padding(.horizontal)
                 
                
                HStack{
                    Text("Total Price:").bold()
                   Spacer()
                    Text("0.00€").bold().padding()
                    
                    
                }.padding()
                
                HStack{
                    Button(action: {}){
                        Text("Buy Now")
                            .padding(10)
                            .background(.green)
                            .foregroundColor(.white)
                            .cornerRadius(20)
                    }
                    
                }.padding()
                
                Spacer()
            }
        }.padding()
    }
}

struct ReservationView_Previews: PreviewProvider {
    static var previews: some View {
        ReservationView(title: "Buy Ticket")
    }
}
