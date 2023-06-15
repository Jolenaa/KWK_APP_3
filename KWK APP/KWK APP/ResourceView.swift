//
//  ResourceView.swift
//  KWK APP
//
//  Created by Jolena Akudago on 6/14/23.
//

import SwiftUI

struct ResourceView: View {
    var body: some View {
       
        NavigationStack {
            VStack {
                Text("Resources")
                    .font(.system(size: 40))
                    .fontWeight(.black)
                    .padding()
                Link("Check out Mind", destination: URL(string: "https://www.mind.org.uk/information-support/tips-for-everyday-living/wellbeing/wellbeing/")!)
                Text("With this article, you can get a general understanding of what mental wellbeing is and some ways that you can encorporate improvements in your daily lives")
                    .multilineTextAlignment(.center)
                    .padding(.all)
                Link("Check out The American Pyscological Association", destination: URL(string: "https://www.apa.org/monitor/2023/01/trends-improving-youth-mental-health")!)
                    .padding(.horizontal)
                Text("This resource focuses on the studies that have been done on kids' and teens' mental health. It also provides doctors' suggestions for steps to explore for specific environments such as school.")
                    .multilineTextAlignment(.center)
                    .padding(.all)
                Link("Mental health quiz", destination: URL(string: "https://www.cdc.gov/mentalhealth/quiz/index.htm")!)
                Text("Provided above is a quiz that you can take to test your knowledge about mental health. You may even learn so new facts!")
                    .multilineTextAlignment(.center)
                    .padding(.all)
                    
                }
        }
        
            }
        }

struct ResourceView_Previews: PreviewProvider {
    static var previews: some View {
        ResourceView()
    }
}
