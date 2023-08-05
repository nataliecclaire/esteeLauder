//
//  airyLotion.swift
//  esteeLauder
//
//  Created by Natalie McKenzie on 8/1/23.
//

import SwiftUI

struct airyLotion: View {
    
    @State private var numClicks = 0
    @State private var button = "Pull up the proof..."
    @State private var textTitle = ""
    
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color("backgroundColor"), Color("pink")]), startPoint: .top, endPoint: .bottomTrailing).ignoresSafeArea()

                ScrollView {
                    VStack {
                        Text("AIRY LOTION")
                            .font(.custom("AkzidenzGroteskBQ-Bold", size: 35))
                            .foregroundColor(Color("magenta"))
                            .multilineTextAlignment(.center)
                            .padding(.vertical)
                        Text("Re-balances. Refreshes. Renews.")
                            .foregroundColor(Color("darkRose"))
                            .multilineTextAlignment(.center)
                            .font(.custom("AkzidenzGroteskBQ-Reg", size: 20))
                            .padding([.leading, .bottom, .trailing])
                        Text("DIVE IN.\nDRINK UP.")
                            .font(.custom("AkzidenzGroteskBQ-Bold", size: 30))
                            .foregroundColor(Color("darkRose"))
                            .padding(.vertical)
                            .padding(.trailing,180)
                        
                        GifImage("estee41")
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
                                    textTitle = "Immediately: Moisture is boosted.*"
                                    button = "Gimme more!"
                                }
                            }
                            else if (numClicks == 2) {
                                withAnimation(.easeIn(duration: 1.0)) {
                                    textTitle = "Oiliness appears 33% reduced.**"
                                    button = "Wow! Add this to my wish list!"
                                }
                            }
                            else if (numClicks == 3) {
                                wishList3 += 1
                            }
                        }
                        .font(.custom("AkzidenzGroteskBQ-Bold", size: 21))
                        .buttonStyle(.borderedProminent)
                        .tint(Color("blossomPink"))
                        .foregroundColor(Color("darkRose"))
                        .padding()
                        
                        Text("*CLINICAL TESTING ON 33 WOMEN AFTER A SINGLE PRODUCT APPLICATION")
                            .font(.custom("AkzidenzGroteskBQ-Reg", size: 18))
                            .foregroundColor(Color("darkRose"))
                            .multilineTextAlignment(.center)
                            .padding([.top, .leading, .trailing], 20.0)
                        Text("**CLINICAL TESTING ON 30 WOMEN AFTER A SINGLE PRODUCT APPLICATION")
                            .font(.custom("AkzidenzGroteskBQ-Reg", size: 18))
                            .foregroundColor(Color("darkRose"))
                            .multilineTextAlignment(.center)
                            .padding([.top, .leading, .trailing], 20.0)
                    }
                }
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

struct airyLotion_Previews: PreviewProvider {
    static var previews: some View {
        airyLotion()
    }
}
