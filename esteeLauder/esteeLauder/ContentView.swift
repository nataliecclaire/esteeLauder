//
//  ContentView.swift
//  esteeLauder
//
//  Created by Natalie McKenzie on 7/15/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showHomeView = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [ Color("white"), Color("lightRose"), Color("pink"), Color("darkRose")]), startPoint: .top, endPoint: .bottomTrailing)
                
                VStack {
                    Image("elLogo")
                        .renderingMode(.template)
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(Color.black
                        )
                        .padding([.leading, .bottom, .trailing], 35.0)
                    
                    NavigationLink(destination: HomeView()) {
                        Text("Welcome to your best skin.")
                            .font(.custom("OptimaDisplay-Book", size: 23))
                            .foregroundColor(Color.black)
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(Color("white"))
                    .shadow(radius:15)
                    }
                //            RadialGradient(gradient: Gradient(colors: [Color("blossomPink"), Color("blushPink"), Color("white")]), center: .center, startRadius: 2, endRadius: 450)
                //            AngularGradient(gradient: Gradient(colors: [Color("darkRose"), Color("lightRose"), Color("white"), Color("darkRose"), Color("lightRose"), Color("white"), Color("darkRose")]), center: .center)
                //            Color("darkRose")
                //                .ignoresSafeArea()

            }
            .edgesIgnoringSafeArea(.all)
            
            .fullScreenCover(isPresented: $showHomeView) {
                HomeView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
