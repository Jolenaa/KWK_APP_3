//
//  ResourceView.swift
//  KWK_Group_Project(APP)
//
//  Created by Jolena Akudago on 6/14/23.
//
import SwiftUI

struct ResourceView: View {
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color("myPurple"), Color(.systemPink)]), startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all)
                
                ScrollView {
                    VStack(spacing: 20) {
                        Text("    ")
                        Text("Resources")
                            .font(.system(size: 40))
                            .fontWeight(.black)
                            .padding()
                        Image("Pic1")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 170)
                        
                        
                        Link("Check out Mind", destination: URL(string: "https://www.mind.org.uk/information-support/tips-for-everyday-living/wellbeing/wellbeing/")!)
                        
                        Text("With this article, you can get a general understanding of what mental wellbeing is and some ways that you can incorporate improvements in your daily lives")
                            .multilineTextAlignment(.center)
                            .padding(.all)
                        
                        Link("Check out The American Psychological Association", destination: URL(string: "https://www.apa.org/monitor/2023/01/trends-improving-youth-mental-health")!)
                            .padding(.horizontal)
                        
                        Text("This resource focuses on the studies that have been done on kids' and teens' mental health. It also provides doctors' suggestions for steps to explore for specific environments such as school.")
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.center)
                            .padding(.all)
                        
                        Link("Mental health quiz", destination: URL(string: "https://www.cdc.gov/mentalhealth/quiz/index.htm")!)
                        
                        Text("Provided above is a quiz that you can take to test your knowledge about mental health. You may even learn some new facts!")
                            .multilineTextAlignment(.center)
                            .padding(.all)
                    }
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
                    .background(
                        Image("backgroundImage")
                            .resizable()
                            .scaledToFill()
                            .opacity(0.5))
                   
                            }
                        }
                    }
                }
                
                
                struct ResourceView_Previews: PreviewProvider {
                    static var previews: some View {
                        ResourceView()
                    }
                }
            }
