//
//  ContentView.swift
//  GeometryR
//
//  Created by mac on 10/1/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
                column(image1: "potret1", image2: "potret2", image3: "potret3")
                column(image1: "potret3", image2: "potret1", image3: "potret2")
            }.navigationTitle("Gallery")
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

#Preview {
    ContentView()
}

struct column:View {
    var image1, image2, image3:String
    var body: some View {
        GeometryReader{
            geo in
            HStack{
                Image(self.image1)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: geo.size.width/3, height: geo.size.height)
                    .clipped()
                Image(self.image2)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: geo.size.width/3, height: geo.size.height)
                    .clipped()
                Image(self.image3)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: geo.size.width/3, height: geo.size.height)
                    .clipped()
            }
        }
    }
}
