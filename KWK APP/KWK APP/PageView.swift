//
//  PageView.swift
//  KWK APP
//
//  Created by Jolena Akudago on 6/14/23.
//

import SwiftUI

struct PageView: View {
    var body: some View {
        VStack{
            
            Text("Mindopoly")
            Text("About Us")
                .fontWeight(.heavy)
                .font(.largeTitle)
                .multilineTextAlignment(.leading)
                .frame(maxWidth: .infinity)
                .frame(height: 100)
                .font(.system(size: 100))
            
            Text("As a team deeply committed to addressing the critical issue of female mental health, we are excited to introduce you to an innovative app that has been making waves in transforming lives and creating positive change: Mindopoly.")
                .multilineTextAlignment(.center)
                .padding(.horizontal)
                
            
            
            Text("What is Mindopoly?")
                .fontWeight(.heavy)
                .font(.largeTitle)
                .multilineTextAlignment(.leading)
                .frame(maxWidth: .infinity)
                .frame(height: 100)
                .font(.system(size: 100))
            
            Text("Mindopoly is a groundbreaking app that aims to revolutionize how we approach mental health care for women. We believe that every woman deserves the opportunity to prioritize her mental well-being and embark on a transformative journey of self-discovery and emotional resilience.")
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            
            Spacer()
        }
    }
}



struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView()
    }
}
