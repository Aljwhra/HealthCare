//
//  Arcticles_View.swift
//  Healthcare
//
//  Created by Aljwhra Alnasser on 05/11/2023.
//

import SwiftUI

struct Arcticles_View: View {
    
   var popularArticlesArry = [
    Popular_Articles(titile: "Covid-19"),
    Popular_Articles(titile: "Diet"),
    Popular_Articles(titile: "Fitness"),
    Popular_Articles(titile: "Diet")
        ]
    
    var trendingArticles = [
        Trending_Articles(image: "1", titile1: "Covid-19", titile2: "Comparing the AstraZeneca and Sinovac COVID-19 Vaccines", date: "Jun 12, 2022", time: "6 min read"),
        Trending_Articles(image: "2", titile1: "Covid-19", titile2: "Comparing the AstraZeneca and Sinovac COVID-19 Vaccines", date: "Jun 12, 2022", time: "6 min read"),
        Trending_Articles(image: "2", titile1: "Covid-19", titile2: "Comparing the AstraZeneca and Sinovac COVID-19 Vaccines", date: "Jun 12, 2022", time: "6 min read")
    ]
    
   var relatedArticlesArry = [
    
    Related_Articles(imageName: "3", titile: "The 25 Healthiest Fruits You Can Eat, According to a Nutritionist", date: "Jun 10, 2022", time: "5min read"),
    Related_Articles(imageName: "4", titile: "The 25 Healthiest Fruits You Can Eat, According to a Nutritionist", date: "Jun 10, 2022", time: "5min read"),
    Related_Articles(imageName: "5", titile: "The 25 Healthiest Fruits You Can Eat, According to a Nutritionist", date: "Jun 10, 2022", time: "5min read")
   ]
    
    var body: some View {
        
        NavigationStack{
            
          
                VStack(alignment: .leading){
                    Search(titileSearch: "Search articles, news...")
                    Text("Popular Articles")
                        .font(.title3)
                        .bold()
                   
                    ScrollView(.horizontal){
                        HStack(spacing: 50){
                            ForEach(popularArticlesArry) { articles in
                                articles
                            }
                            
                        }.padding(.leading,20)
                    }
                    
                    HStack(spacing: 130){
                        Text("Trending Articles")
                            .font(.title3)
                            .bold()
                        Text("See all")
                            .foregroundStyle(.mygreen)
                    }
                    
                    ScrollView(.horizontal){
                        HStack(spacing: 20){
                            ForEach(trendingArticles) { article in
                                article
                            }
                        }.padding()
                        
                    }
                    
                    HStack(spacing: 130){
                        Text("Related Articles")
                            .font(.title3)
                            .bold()
                        Text("See all")
                            .foregroundStyle(.mygreen)
                    }
                    
                    
                    VStack(alignment: .center, spacing: 20){
                        ForEach(relatedArticlesArry) { articles in
                            articles
                        }
                    }.padding(.horizontal)
                    
                    
                }.padding(.horizontal)
            
            .navigationTitle("Arcticles")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(trailing: Button(action: {}) {Image("dots")})
            
        }
    }
}

#Preview {
    Arcticles_View()
}

