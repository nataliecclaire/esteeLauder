//
//  HomeView.swift
//  esteeLauder
//
//  Created by Natalie McKenzie on 7/15/23.
//

import SwiftUI
import UIKit

struct HomeView: View {
    
    @State private var showInfoView = false
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [ Color("backgroundColor1"), Color("blushPink"), Color("pink"), Color("rosy")], startPoint: .topLeading, endPoint: .bottomTrailing)
            //            ((colors: [Color("rosy"), Color("blossompink")]), startPoint: .topLeading, endPoint: .bottomTrailing)
            
            //can't scroll on vstack
            LazyVStack {
                withAnimation(.easeIn(duration: 2.0)) {
                    Text("Introducing")
                        .font(.custom("OptimaDisplay-Book", size: 23))
                        .foregroundColor(Color.black)
                }
                
                withAnimation(.easeIn(duration: 2).delay(3)) {
                    Text("The Nutritious Line")
                        .font(.custom("OptimaDisplay-Roman", size: 30))
                        .foregroundColor(Color.black)
                }
                NavigationLink(destination: skInfo()) {
                    Image("estee 49")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                }
//                .buttonStyle(.borderedProminent)
//                .tint(Color("white"))
//                .shadow(radius:15)
            }
        }
        //            RadialGradient(gradient: Gradient(colors: [Color("blossomPink"), Color("blushPink"), Color("white")]), center: .center, startRadius: 2, endRadius: 450)
        //            AngularGradient(gradient: Gradient(colors: [Color("darkRose"), Color("lightRose"), Color("white"), Color("darkRose"), Color("lightRose"), Color("white"), Color("darkRose")]), center: .center)
        //      Color("darkRose")
        //          .ignoresSafeArea()
        .edgesIgnoringSafeArea(.all)
    }
}
        
//        .fullScreenCover(isPresented: $showHomeView) {
//            HomeView()

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
//
//struct ColorNav: View {
//
//    init() {
//        UINavigationBar.appearance().tintColor = .white
//    }
//    var body: some View {
//        NavigationView {
//            NavigationLink("Test", destination: Text("Testing screen"))
//        }
//    }
//}
