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
            ZStack{
                Color(red:1.000, green: 0.827, blue: 0.936)
                                        .ignoresSafeArea(.all)
                VStack {
                    
                    Text("Mindopoly")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                    .padding()
                        .frame(maxWidth: .infinity)
                        .frame(height: 100)
                    
                    
                    Text("Welcome to Mindopoly! Our purpose is to help communities prioritize mental wellbeing by creating tools to assist people staying organized. This allows more people to stay on track with their goals and spend more time prioritizing mental health. Mindopoly is dedicated to promoting resiliance by providing a to-do tracker. \n Additionally, we have provided access to resources so that visitors can to learn more about mental health proactivity and understand ways to help people who may be struggling. ")
                        .multilineTextAlignment(.center)
                    Text("                                                                                                                                   ")
                    
                        .padding(.horizontal)
                    
                }
                .background(Color(red:1.000, green: 0.827, blue: 0.936))            .toolbar {
                    
                    ToolbarItemGroup(placement: .status) {
                        NavigationLink(destination: TODOView().navigationBarBackButtonHidden(true)) {
                            Text("To-Do")
                                .foregroundColor(Color.black)
                        }
                        NavigationLink(destination: ResourceView().navigationBarBackButtonHidden(true)) {
                            Text("Resources")
                                .foregroundColor(Color.black)
                        }
                        NavigationLink(destination: PageView().navigationBarBackButtonHidden(true)){
                            Text("About Us")
                                .foregroundColor(Color.black)
                        }
                        NavigationLink(destination: ContentView().navigationBarBackButtonHidden(true)) {
                            Text("Home")
                                .foregroundColor(Color.black)
                        }
                    }
                }
                
                .navigationTitle("Home")
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarHidden(false)
            }
        }
    }
    }
        struct ContentView_Previews: PreviewProvider {
            static var previews: some View {
                ContentView()
            }
        }
    

