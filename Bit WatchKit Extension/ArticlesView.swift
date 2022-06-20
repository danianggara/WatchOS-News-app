//
//  ArticlesView.swift
//  Bit WatchKit Extension
//
//  Created by Dani Anggara on 21/08/21.
//

import SwiftUI

struct ArticlesView: View {
    @ObservedObject var articleManager = ArticleFetcher()
    @State private var searchText : String = ""
    
    var body: some View {
        VStack {
            if(self.articleManager.fetchError == true){
                Text("There was an error while fetching your news")
                    .padding(.vertical)
                    .multilineTextAlignment(.center)
                Button(action:{
                    self.articleManager.fetchArticles()
                }){
                    Text("Try Again")
                }
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.orange/*@END_MENU_TOKEN@*/)
                .cornerRadius(/*@START_MENU_TOKEN@*/17.0/*@END_MENU_TOKEN@*/)
                .padding(.horizontal, 15.0)
                
            } else {
                List(self.articleManager.articles) { article in
                    NavigationLink(destination: ArticleDetail(article: article)){
                        ArticleRow(article: article)
                    }
                }
            }
        }.onAppear{
            self.articleManager.fetchArticles()
        }
    }
}

struct ArticlesView_Previews: PreviewProvider {
    static var previews: some View {
        ArticlesView()
    }
}
