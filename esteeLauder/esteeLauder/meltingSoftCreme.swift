//
//  meltingSoftCreme.swift
//  esteeLauder
//
//  Created by Natalie McKenzie on 8/3/23.
//

import SwiftUI

struct meltingSoftCreme: View {
    
    @State private var numClicks = 0
    @State private var button = "Pull up the proof..."
    @State private var textTitle = ""
    
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color("backgroundColor"), Color("pink")]), startPoint: .top, endPoint: .bottomTrailing).ignoresSafeArea()
                
                ScrollView {
                    VStack {
                        Text("MELTING SOFT CREME/MASK")
                            .font(.custom("AkzidenzGroteskBQ-Bold", size: 35))
                            .foregroundColor(Color("magenta"))
                            .multilineTextAlignment(.center)
                            .padding(.vertical)
                        Text("Calms. Renews. Strengthens.")
                            .foregroundColor(Color("darkRose"))
                            .multilineTextAlignment(.center)
                            .font(.custom("AkzidenzGroteskBQ-Reg", size: 20))
                            .padding([.leading, .bottom, .trailing])
                        Text("ALL GLOW.\nNO GRUMP.")
                            .font(.custom("AkzidenzGroteskBQ-Bold", size: 30))
                            .foregroundColor(Color("darkRose"))
                            .padding(.vertical)
                            .padding(.trailing,180)
                        
                        GifImage("estee39")
                            .frame(width: 325.0, height: /*@START_MENU_TOKEN@*/325.0/*@END_MENU_TOKEN@*/)
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
                                    textTitle = "Immediately: Skin barrier is strengthened.*"
                                    button = "Wow! Add this to my wish list!"
                                }
                            }
                            else if (numClicks == 2) {
                                wishList4 += 1
                            }
                        }
                        .font(.custom("AkzidenzGroteskBQ-Bold", size: 21))
                        .buttonStyle(.borderedProminent)
                        .tint(Color("blossomPink"))
                        .foregroundColor(Color("darkRose"))
                        .padding()
                        
                        Text("*CLINICAL TESTING ON 25 WOMEN AFTER A SINGLE PRODUCT APPLICATION")
                            .font(.custom("AkzidenzGroteskBQ-Reg", size: 18))
                            .foregroundColor(Color("darkRose"))
                            .multilineTextAlignment(.center)
                            .padding([.top, .leading, .trailing], 20.0)
                        
                        ZStack {
                            VStack (alignment: .leading, spacing: 20.0) {
                                
                                WebView(urlString: "Oe1hjzxFxLg?si=PCStJIBRn-NcVLfv")
                                    .frame(width:330, height: 180)
                                    .border(Color("blushPink"), width: 1)
                                HStack(spacing: 20.0) {
                                    Text("Learn more about how to use the Melting Soft Creme/Mask...")
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

struct meltingSoftCreme_Previews: PreviewProvider {
    static var previews: some View {
        meltingSoftCreme()
    }
}
