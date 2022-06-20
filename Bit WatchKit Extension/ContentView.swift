//
//  ContentView.swift
//  Bit WatchKit Extension
//
//  Created by Dani Anggara on 21/08/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Bit.")
                .font(.title)
                .fontWeight(.semibold)
                .padding(.leading, 15.0)
            Text("Daily news on your watch.")
                .fontWeight(.thin)
                .multilineTextAlignment(.leading)
                .padding(.leading, 15.0)
            
            Spacer()
            
            NavigationLink(destination: ArticlesView()){
                Text("Start Reading")
            }
            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.orange/*@END_MENU_TOKEN@*/)
            .cornerRadius(/*@START_MENU_TOKEN@*/17.0/*@END_MENU_TOKEN@*/)
            .padding(.horizontal, 15.0)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
