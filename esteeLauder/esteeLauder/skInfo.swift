//
//  skInfo.swift
//  esteeLauder
//
//  Created by Natalie McKenzie on 7/22/23.
//

import SwiftUI
import WebKit

struct skInfo: View {
    var body: some View {
        
        NavigationStack {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color("backgroundColor"), Color("backgroundColor1")]), startPoint: .top, endPoint: .bottomTrailing).ignoresSafeArea()
                
                ScrollView {
                    LazyVStack {
                        Text("SkInfo")
                            .font(.custom("AkzidenzGroteskBQ-Bold", size: 40))
                            .foregroundColor(Color("magenta"))
                            .padding(.top, 50)
                        Text("Say hello to your new skin squad!")
                            .multilineTextAlignment(.center)
                            .font(.custom("AkzidenzGroteskBQ-Bold", size: 20))
                            .foregroundColor(Color("darkRose"))
                            .padding(.bottom)
                        Image("nutritiousBackground1").resizable(resizingMode: .stretch).aspectRatio(contentMode: .fit)
                            .ignoresSafeArea()
                        
                        Group {
                            //2-IN-1 CLEANSER
                            Text("Meet the 2-in-1 cleanser")
                                .foregroundColor(Color("darkRose"))
                                .multilineTextAlignment(.center)
                                .font(.custom("AkzidenzGroteskBQ-Bold", size: 24))
                                .padding([.top, .leading, .trailing])
                            Text("Purify. Pores. Glow.")
                                .foregroundColor(Color("darkRose"))
                                .multilineTextAlignment(.center)
                                .font(.custom("AkzidenzGroteskBQ-Reg", size: 20))
                                .padding([.leading, .bottom, .trailing])
                            NavigationLink(destination: twoInOneCleanser()) {
                                Image("estee 19")
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fit)
                                    .cornerRadius(40)
                                    .shadow(radius:15)
                                    .padding(.horizontal, 50)
                            }
                            Text("Bold, thorough, and cool as a cucumber...")
                                .foregroundColor(Color("darkRose"))
                                .multilineTextAlignment(.center)
                                .font(.custom("AkzidenzGroteskBQ-Reg", size: 20))
                                .padding(.all)
                        }
                        Group {
                            //RADIENT ESSENCE LOTION
                            Text("\nThe Radient Essence Lotion:")
                                .foregroundColor(Color("darkRose"))
                                    .multilineTextAlignment(.center)
                                    .font(.custom("AkzidenzGroteskBQ-Bold", size: 24))
                                    .padding([.top, .leading, .trailing])
                            Text("Awakens. Balances. Calms.")
                                .foregroundColor(Color("darkRose"))
                                .multilineTextAlignment(.center)
                                .font(.custom("AkzidenzGroteskBQ-Reg", size: 20))
                                .padding([.leading, .bottom, .trailing])
                            NavigationLink(destination: radientEssence()) {
                                Image("estee 22")
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fit)
                                    .cornerRadius(40)
                                    .shadow(radius:15)
                                    .padding(.horizontal, 50)
                            }
                            Text("Rejuvenating, silky, and smooth...").foregroundColor(Color("darkRose"))
                                .multilineTextAlignment(.center)
                                .font(.custom("AkzidenzGroteskBQ-Reg", size: 20))
                                .padding(.all)
                        }
                         
                        Group {
                            //AIRY LOTION
                            Text("\nThe Airy Lotion")
                                .foregroundColor(Color("darkRose"))
                                    .multilineTextAlignment(.center)
                                    .font(.custom("AkzidenzGroteskBQ-Bold", size: 24))
                                    .padding([.top, .leading, .trailing])
                            Text("Re-balances. Refreshes. Renews.")
                                .foregroundColor(Color("darkRose"))
                                .multilineTextAlignment(.center)
                                .font(.custom("AkzidenzGroteskBQ-Reg", size: 20))
                                .padding([.leading, .bottom, .trailing])
                            NavigationLink(destination: airyLotion()) {
                                Image("estee 18")
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fit)
                                    .cornerRadius(40)
                                    .shadow(radius:15)
                                    .padding(.horizontal, 50)
                            }
                            Text("Light, soothing, and soft as a pillow...").foregroundColor(Color("darkRose"))
                                .multilineTextAlignment(.center)
                                .font(.custom("AkzidenzGroteskBQ-Reg", size: 20))
                                .padding(.all)
                        }
                            
                        Group {
                            //MELTING SOFT CREME/MASK
                            Text("\nThe Melting Soft Creme/Mask")
                                .foregroundColor(Color("darkRose"))
                                    .multilineTextAlignment(.center)
                                    .font(.custom("AkzidenzGroteskBQ-Bold", size: 24))
                                    .padding([.top, .leading, .trailing])
                            Text("Calms. Renews. Strengthens.")
                                .foregroundColor(Color("darkRose"))
                                .multilineTextAlignment(.center)
                                .font(.custom("AkzidenzGroteskBQ-Reg", size: 20))
                                .padding([.leading, .bottom, .trailing])
                            NavigationLink(destination: meltingSoftCreme()) {
                                Image("estee 20")
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fit)
                                    .cornerRadius(40)
                                    .shadow(radius:15)
                                    .padding(.horizontal, 50)
                            }
                            Text("Light, soothing, and soft as a pillow...").foregroundColor(Color("darkRose"))
                                .multilineTextAlignment(.center)
                                .font(.custom("AkzidenzGroteskBQ-Reg", size: 20))
                                .padding(.all)
                        }
                        
                        Text("Scroll to learn the science behind your new skincare routine...")
                            .foregroundColor(Color("darkRose"))
                            .multilineTextAlignment(.center)
                            .font(.custom("AkzidenzGroteskBQ-Reg", size: 20))
                            .padding(.horizontal)
                        ZStack {
                            VStack (alignment: .leading, spacing: 20.0) {

                                WebView(urlString: "_Ga45ZWrn9A")
                                    .frame(width:330, height: 180)
                                    .border(Color("blushPink"), width: 1)
                                HStack(spacing: 20.0) {
                                    Text("Your new routine...")
                                        .fontWeight(.bold)
                                        .foregroundColor(Color("darkRose"))
                                        .multilineTextAlignment(.center)
                                }
                                Text("Step 1: Cleanse with the 2-in-1 foam cleanser.\n\nStep 2: Treat with the radiant essence lotion.\n\nStep 3: Moisturise with the airy lotion or melting soft creme/mask.")
                                    .foregroundColor(Color("darkRose"))
//                                Button(action: {}) {
//                                    Text("Add this to my routine!")
//                                        .foregroundColor(Color("darkRose"))
//                                        .lineLimit(1)
//                                        .padding()
//                                        .background(Rectangle() .foregroundColor(Color("blushPink")))
//                                        .cornerRadius(15)
//                                        .shadow(radius:15)
//                                        .padding()
//                                }
//                                .padding(.horizontal, 45.0)
                            }
                            .padding()
                            .background(Rectangle() .foregroundColor(Color("white")))
                            .cornerRadius(15)
                            .shadow(radius:15)
                            .padding()
                        }
                    }
                    NavigationLink(destination: info()) {
                        Text("Let's learn about the ingredients and sustainibility!")
                            .font(.custom("AkzidenzGroteskBQ-Bold", size: 25))
                            .foregroundColor(Color("darkRose"))
                            .padding(.horizontal)
                    }
                    .padding()
                    .buttonStyle(.borderedProminent)
                    .tint(Color("blushPink"))
                    .shadow(radius:15)
                }
            }
        }
        .ignoresSafeArea()
    }
}

struct WebView: UIViewRepresentable {
  let urlString: String
  func makeUIView(context: Context) -> WKWebView {
    guard let YoutubeURL = URL(string: "https://www.youtube.com/embed/\(urlString)") else {
      return WKWebView()
    }
    let request = URLRequest(url: YoutubeURL)
    let webView = WKWebView()
    webView.load(request)
    return webView
  }
  func updateUIView(_ uiView: WKWebView, context: Context) {}
}

struct skInfo_Previews: PreviewProvider {
    static var previews: some View {
        skInfo()
    }
}
