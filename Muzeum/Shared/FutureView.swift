//
//  FutureView.swift
//  Muzeum
//
//  Created by Natalia Wcislo on 27.04.23.
//

import SwiftUI

struct FutureView: View {
    var body: some View {
        ScrollView{
            VStack{
                Text("Museum Evolution")
                    .font(.largeTitle)
                    .padding()
            }
            
            HStack{
                Image("1F")
                    .resizable()
                    .frame(width: 250.0, height: 350.0)
            }.padding()
            
            Spacer()
            
            VStack{
                Text("""
                Have you ever wondered where we come from? And where life is going? The Museum für Naturkunde Berlin has the answers. We are reinventing ourselves for a better future. Join us. Become part of our Museum Evolution – on YouTube!

                The Earth is changing. Every second. For 4.56 billion years. But this change has been happening too fast lately! That is evidenced by the speed of species extinction and climate change.

                We are making the museum fit for new challenges, including architecturally. As a place where one million visitors per year can exchange ideas about the preservation of our natural foundations for life. And as a place where over 200 scientists are already researching life and Earth. We are catapulting the 30 million objects in our collection into the future – analog and digital. For all of us! So that we can work together on solutions – for nature and the cohesion of society.
                """).padding()

            }
            
            VStack{
                VideoView(videoID: "NrIDXgxR7ao&t=1s")
            }
          Spacer()
        }
    }
}

struct FutureView_Previews: PreviewProvider {
    static var previews: some View {
        FutureView()
    }
}
