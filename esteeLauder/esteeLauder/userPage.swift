//
//  userPage.swift
//  esteeLauder
//
//  Created by Natalie McKenzie on 8/4/23.
//

import SwiftUI

struct userPage: View {
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color("backgroundColor"), Color("pink")]), startPoint: .top, endPoint: .bottomTrailing).ignoresSafeArea()
                
                ScrollView {
                    VStack {
                        Text("Welcome to your best skin...")
                            .font(.custom("OptimaDisplay-Book", size: 30))
                            .foregroundColor(Color.black)
                            .padding([.top, .leading, .trailing])
                        
                        Image("estee 1")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(40)
                            .padding([.leading, .bottom, .trailing], 50.0)
                        Text("My Wishlist:")
                            .font(.custom("OptimaDisplay-Book", size: 30))
                            .foregroundColor(Color.black)
                            .padding([.top, .leading, .trailing])

                        if (wishList1 == 1) {
                            Link(destination: URL(string:"https://www.esteelauder.com/product/684/112204/product-catalog/skincare/cleanser-makeup-remover/nutritious/2-in-1-foam-cleanser")!, label: { Image("estee 19")
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fit)
                                    .cornerRadius(40)
                                    .padding([.leading, .bottom, .trailing], 50.0)})
                        }
                        if (wishList2 == 1) {
                            Link(destination: URL(string:"https://www.esteelauder.com/product/26389/112200/product-catalog/skincare/toner-treatment-lotion/nutritious/radiant-essence-treatment-lotion?size=6.7_oz.")!, label: {Image("estee 22")
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fit)
                                    .cornerRadius(40)
                                    .padding([.leading, .bottom, .trailing], 50.0)})
                        }
                        if (wishList3 == 1) {
                            Link(destination: URL(string:"https://www.ulta.com/p/nutritious-airy-lotion-moisturizer-pimprod2038331?sku=2607435&cmpid=PS_Non!google!Product_Listing_Ads&utm_source=google&utm_medium=paidsearch&cagpspn=pla&CATCI=pla-326751455724&CAAGID=18002902230&CAWELAID=330000200003110792&CATARGETID=330000200002992777&CADevice=c&gclid=CjwKCAjww7KmBhAyEiwA5-PUSnNqNsxxFIaiY5GI7mRd9lqE0doWDGRBao4hFNwIccLqT0gJa_xC7xoC96kQAvD_BwE")!, label: { Image("estee 18")
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fit)
                                    .cornerRadius(40)
                                    .padding([.leading, .bottom, .trailing], 50.0)})
                        }
                        if (wishList4 == 1) {
                            Link(destination: URL(string:"https://www.esteelauder.com/product/688/112202/product-catalog/skincare/moisturizer/nutritious/melting-soft-crememask-moisturizer?size=1.7_oz.")!, label: { Image("estee 20")
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fit)
                                    .cornerRadius(40)
                                    .padding([.leading, .bottom, .trailing], 50.0)})
                        }
                    }
                }
            }
        }
    }
}

struct userPage_Previews: PreviewProvider {
    static var previews: some View {
        userPage()
    }
}
