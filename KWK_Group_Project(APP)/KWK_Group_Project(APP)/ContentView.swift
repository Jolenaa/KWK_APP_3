//
//  ContentView.swift
//  KWK_Group_Project(APP)
//
//  Created by Jolena Akudago on 6/14/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .trailing) {
                
                Text("Mindopoly")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .frame(height: 100)
                

                Text("Welcome to Mindopoly! Our purpose is to help communities prioritize mental wellbeing by creating tools to assist people staying organized. This allows more people to stay on track with their goals and spend more time prioritizing mental health. Mindopoly is dedicated to promoting resiliance by providing a to-do tracker. Additionally, we have provided access to resources so that visitors can to learn more about mental health proactivity and understand ways to help people who may be struggling. ")
                    .padding(.horizontal)
                    
            }
            .toolbar {
                ToolbarItemGroup(placement: .status) {
                    NavigationLink(destination: TODOView()) {
                        Text("To-Do")
                    }
                    NavigationLink(destination: ResourceView()) {
                        Text("Resources")
                        NavigationLink(destination: PageView()){
                            Text("About Us")
                        }
                    }
                }
            }
            
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(false)
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
