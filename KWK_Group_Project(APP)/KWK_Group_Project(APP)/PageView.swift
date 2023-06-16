//
//  PageView.swift
//  KWK_Group_Project(APP)
//
//  Created by Jolena Akudago on 6/14/23.
//

import SwiftUI

struct PageView: View {
    var body: some View {
        ZStack{
            
            NavigationStack {
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
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                        .font(.system(size: 12))
                    
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
                        .font(.system(size: 12))
                    Text("Meet The Team: ")
                   
                        .fontWeight(.heavy)
                        .font(.largeTitle)
                        .multilineTextAlignment(.leading)
                        .frame(maxWidth: .infinity)
                        .frame(height: 100)
                        .font(.system(size: 100))
                    Group{
                        Text("Hi my name is Tanya and I am a rising senior from Phoenix, Arizona. In my free time, I like to watch movies :popcorn: and eat delicious foods :yum:.\n")
                            .font(.system(size: 12))
                        Text(" Hello, my name is Jessie and I am 14 years old. I live in California and I have two sisters. Some of my hobbies are baking \n")
                            .font(.system(size: 12))
                        Text("Hi, my name is Sophie and I'm 16. I live in California, and go to Foothill High School. I like listening to music, and playing sports like soccer and lacrosse. We hope you enjoy our app!!!\n")
                            .font(.system(size: 12))
                        Text("Hello, my name is Jolena Akudago, I am 18 years old. I am from Albuquerque New Mexico. I am a lover of all things superheroes (I have over 100+ comic books).")
                            .font(.system(size: 12))
                    }
                        Spacer()
                }
                .toolbar {
                    ToolbarItemGroup(placement: .status) {
                        NavigationLink(destination: ResourceView()) {
                            Text("Resource")
                                .foregroundColor(Color.black)
                        }
                    }
                    ToolbarItemGroup(placement: .status) {
                        NavigationLink(destination: ContentView()) {
                            Text("Home")
                            .foregroundColor(Color.black)                }
                    }
                    ToolbarItemGroup(placement: .status) {
                        NavigationLink(destination: TODOView()) {
                            Text("TO-DO")
                                .foregroundColor(Color.black)
                        }
                    }
                    
                }
                .background(
                    Image("backgroundImage")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                        .opacity(0.25)
                )
                
            }
        }
        
    }
    
    struct PageView_Previews: PreviewProvider {
        static var previews: some View {
            PageView()
        }
    }
    
}
