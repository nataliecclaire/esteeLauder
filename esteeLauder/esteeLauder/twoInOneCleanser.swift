//
//  twoInOneCleanser.swift
//  esteeLauder
//
//  Created by Natalie McKenzie on 7/30/23.
//

import SwiftUI
import UIKit
import WebKit

struct twoInOneCleanser: View {
    
    @State private var numClicks = 0
    @State private var button = "Where's the evidence at?"
    @State private var textTitle = ""
    
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color("backgroundColor"), Color("pink")]), startPoint: .top, endPoint: .bottomTrailing).ignoresSafeArea()
                
                ScrollView {
                    VStack {
                        Text("2-IN-1 CLEANSER")
                            .font(.custom("AkzidenzGroteskBQ-Bold", size: 35))
                            .foregroundColor(Color("magenta"))
                            .multilineTextAlignment(.center)
                            .padding(.vertical)
                        Text("Purify. Pores. Glow.")
                            .foregroundColor(Color("darkRose"))
                            .multilineTextAlignment(.center)
                            .font(.custom("AkzidenzGroteskBQ-Reg", size: 20))
                            .padding([.leading, .bottom, .trailing])
                        Text("LESS IS\nPORE")
                            .font(.custom("AkzidenzGroteskBQ-Bold", size: 30))
                            .foregroundColor(Color("darkRose"))
                            .padding(.vertical)
                            .padding(.trailing,200)
                        
                        GifImage("estee38")
                            .frame(width: 325, height: 325)
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
                                    textTitle = "96% of of testers said the 2-in-1 cleanser immediately removed excess oil.*"
                                    button = "Gimme more!"
                                }
                            }
                            else if (numClicks == 2) {
                                withAnimation(.easeIn(duration: 1.0)) {
                                    textTitle = "Pores appear 17% minimized after first use.*"
                                    button = "Wow! Add this to my wish list!"
                                }
                            }
                            else if (numClicks == 3) {
                                wishList1 += 1
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
                        
                        ZStack {
                            VStack (alignment: .leading, spacing: 20.0) {
                                
                                WebView(urlString: "ONnUUbvm3WI?si=HbmKgraF4Lm97-BA")
                                    .frame(width:330, height: 180)
                                    .border(Color("blushPink"), width: 1)
                                HStack(spacing: 20.0) {
                                    Text("Learn more about how to use the 2-in-1 Cleanser...")
                                        .fontWeight(.bold)
                                        .foregroundColor(Color("darkRose"))
                                        .multilineTextAlignment(.center)
                                }
                                .padding(.horizontal, 45.0)
                            }
                            .padding()
                            .background(Rectangle() .foregroundColor(Color("white")))
                            .cornerRadius(15)
                            .shadow(radius:15)
                            .padding()
                        }
                    }
                    .toolbar {
                        ToolbarItemGroup(placement: .status) {
                            NavigationLink(destination: userPage()) {
                                Image("user")
                                    .renderingMode(.template)
                                    .foregroundColor(Color("darkRose"))
                            }
                            .padding(.top, 30)
                        }
                    }
                }
            }
        }
    }
}

struct twoInOneCleanser_Previews: PreviewProvider {
    static var previews: some View {
        twoInOneCleanser()
    }
}

struct GifImage: UIViewRepresentable {
    private let name: String

    init(_ name: String) {
        self.name = name
    }

    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        let url = Bundle.main.url(forResource: name, withExtension: "gif")!
        let data = try! Data(contentsOf: url)
        webView.load(
            data,
            mimeType: "image/gif",
            characterEncodingName: "UTF-8",
            baseURL: url.deletingLastPathComponent()
        )

        return webView
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.reload()
    }

}

struct GifImage_Previews: PreviewProvider {
    static var previews: some View {
        GifImage("estee38")
    }
}
