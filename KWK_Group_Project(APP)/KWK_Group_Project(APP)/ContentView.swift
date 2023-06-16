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
            ZStack {
                Image("backgroundImage2")
                    .resizable()
                    .scaledToFill()
                    .opacity(0.5)
                    .edgesIgnoringSafeArea(.all)
                
                Color(red:1.000, green: 0.827, blue: 0.936)
                    .ignoresSafeArea(.all)
                
                VStack {
                    Image("logo")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        
                    Text("Welcome to Mindopoly! Our purpose is to help \n communities prioritize mental wellbeing by creating \n tools to assist people staying organized. \n This allows more people to stay on track with  \n their goals and spend more time prioritizing\n mental health. Mindopoly is dedicated to promoting\n resilience by providing a to-do tracker. \n Additionally, we have provided access \n to resources so that visitors can\n to learn more about \n mental health proactivity and understand ways to\n help people who may be struggling. ")
                        .fontWeight(.thin)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                    
                    
                    Text("                                                                                                                                   ")
                        .padding(.horizontal)
                }
                .background(Color(red:1.000, green: 0.827, blue: 0.936).opacity(0.7))
                Image("backgroundImage2")
                    .resizable()
                    .scaledToFill()
                    .opacity(0.3)
                    .edgesIgnoringSafeArea(.all)            }
            .toolbar {
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}






