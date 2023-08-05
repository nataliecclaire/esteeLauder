//
//  radientEssence.swift
//  esteeLauder
//
//  Created by Natalie McKenzie on 8/1/23.
//

import SwiftUI
import WebKit
import UIKit

struct radientEssence: View {
    
    @State private var numClicks = 0
    @State private var button = "Pull up the proof..."
    @State private var textTitle = ""
    
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color("backgroundColor"), Color("pink")]), startPoint: .top, endPoint: .bottomTrailing).ignoresSafeArea()
                
                ScrollView {
                    VStack {
                        Text("RADIENCE ESSENCE LOTION")
                            .font(.custom("AkzidenzGroteskBQ-Bold", size: 35))
                            .foregroundColor(Color("magenta"))
                            .multilineTextAlignment(.center)
                            .padding(.vertical)
                        Text("Awakens. Balances. Calms.")
                            .foregroundColor(Color("darkRose"))
                            .multilineTextAlignment(.center)
                            .font(.custom("AkzidenzGroteskBQ-Reg", size: 20))
                            .padding([.leading, .bottom, .trailing])
                        Text("GOODBYE,\nSHINE.")
                            .font(.custom("AkzidenzGroteskBQ-Bold", size: 30))
                            .foregroundColor(Color("darkRose"))
                            .padding(.vertical)
                            .padding(.trailing,160)
                        
                        GifImage("estee40")
                            .frame(width: /*@START_MENU_TOKEN@*/325.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/325.0/*@END_MENU_TOKEN@*/)
                            .cornerRadius(15)
                        
                        Text("\(textTitle)")
                            .font(.custom("AkzidenzGroteskBQ-Bold", size: 25))
                            .foregroundColor(Color("darkRose"))
                            .multilineTextAlignment(.center)
                            .padding()
                        
                        Button("\(button)") {
                            numClicks += 1
                            if (numClicks == 1) {
                                withAnimation(.easeOut(duration: 1.0)) {
                                    textTitle = "Oiliness appears 40% reduced after use.*"
                                    button = "Gimme more!"
                                }
                            }
                            else if (numClicks == 2) {
                                withAnimation(.easeIn(duration: 1.0)) {
                                    textTitle = "Pores appear 31% minimized after four hours.*"
                                    button = "Wow! Add this to my wish list!"
                                }
                            }
                            else if (numClicks == 3) {
                                wishList2 += 1
                            }
                        }
                        .font(.custom("AkzidenzGroteskBQ-Bold", size: 21))
                        .buttonStyle(.borderedProminent)
                        .tint(Color("blossomPink"))
                        .foregroundColor(Color("darkRose"))
                        .padding()
                        
                        Text("*CLINICAL TESTING ON 32 WOMEN 8 WEEKS AFTER USING PRODUCT")
                            .font(.custom("AkzidenzGroteskBQ-Reg", size: 18))
                            .foregroundColor(Color("darkRose"))
                            .multilineTextAlignment(.center)
                            .padding([.top, .leading, .trailing], 20.0)
                        
                        ZStack {
                            VStack (alignment: .leading, spacing: 20.0) {
                                
                                WebView(urlString: "2t3s-OkP4z0?si=8LTUJKGfyJgXRzsK")
                                    .frame(width:330, height: 180)
                                    .border(Color("blushPink"), width: 1)
                                HStack(spacing: 20.0) {
                                    Text("Learn more about how to use the Radience Essence Lotion...")
                                        .fontWeight(.bold)
                                        .foregroundColor(Color("darkRose"))
                                        .multilineTextAlignment(.center)
                                }
                                .padding(.horizontal, 30.0)
                            }
                            .padding()
                            .background(Rectangle() .foregroundColor(Color("white")))
                            .cornerRadius(15)
                            .shadow(radius:15)
                            .padding()
                        }
                        .toolbar {
                            ToolbarItemGroup(placement: .status) {
                                NavigationLink(destination: userPage()) {
                                    Image("user")
                                        .renderingMode(.template)
                                        .foregroundColor(Color("darkRose"))
                                        .frame(width: 30.0, height: 30.0)
                                }
                                .padding(.top, 30)
                            }
                        }
                    }
                }
            }
        }
    }
}

struct radientEssence_Previews: PreviewProvider {
    static var previews: some View {
        radientEssence()
    }
}
