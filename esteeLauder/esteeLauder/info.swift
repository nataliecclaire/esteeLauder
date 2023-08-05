//
//  info.swift
//  esteeLauder
//
//  Created by Natalie McKenzie on 8/4/23.
//

import SwiftUI

struct info: View {
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color("blushPink"), Color("rosy")]), startPoint: .top, endPoint: .bottomTrailing).ignoresSafeArea()
                
                ScrollView {
                    LazyVStack {
                            Text("SkInfo:\nContinued")
                                .font(.custom("AkzidenzGroteskBQ-Bold", size: 40))
                                .foregroundColor(Color("magenta"))
                                .multilineTextAlignment(.center)
                                .padding(.top, 20)
                            
                            //
                            //
                            //INGREDIENTS
                            //
                            //
                        Group {
                            Text("Ingredients:")
                                .foregroundColor(Color("magenta"))
                                .font(.custom("OptimaDisplay-Roman", size: 30))
                                .multilineTextAlignment(.leading)
                                .padding(.top)
                                .padding(.trailing, 200)
                            ZStack {
                                VStack {
                                    Text("• Sweet kelp:")
                                        .foregroundColor(Color("darkRose"))
                                        .font(.custom("AkzidenzGroteskBQ-Bold", size: 23))
                                        .multilineTextAlignment(.center)
                                    Text("Responsibly sourced. Wild harvested with a gentle extraction process.")
                                        .foregroundColor(Color("darkRose"))
                                        .font(.custom("AkzidenzGroteskBQ-Reg", size: 23))
                                        .multilineTextAlignment(.center)
                                    Text("\n• Red algae ferment:")
                                        .foregroundColor(Color("darkRose"))
                                        .font(.custom("AkzidenzGroteskBQ-Bold", size: 23))
                                        .multilineTextAlignment(.center)
                                    Text("Responsibly sourced. Fermented by the power of the sun.")
                                        .foregroundColor(Color("darkRose"))
                                        .font(.custom("AkzidenzGroteskBQ-Reg", size: 23))
                                        .multilineTextAlignment(.center)
                                    Text("\n• Coconut water ferment:")
                                        .foregroundColor(Color("darkRose"))
                                        .font(.custom("AkzidenzGroteskBQ-Bold", size: 23))
                                        .multilineTextAlignment(.center)
                                    Text("Our proprietary ferment. Harnessing the power of a bio-active ferment that undergoes a precise purification process.")
                                        .foregroundColor(Color("darkRose"))
                                        .font(.custom("AkzidenzGroteskBQ-Reg", size: 23))
                                        .multilineTextAlignment(.center)
                                    Link(destination: URL(string:"https://www.esteelauder.com/discover/ingredient-glossary")!, label: {Text("\nLearn more about the ingredients we use here!")
                                            .foregroundColor(Color("pink"))
                                            .font(.custom("AkzidenzGroteskBQ-Reg", size: 19))
                                        .multilineTextAlignment(.center)})
                                }
                            }
                            .padding()
                            .background(Rectangle() .foregroundColor(Color("white")))
                            .cornerRadius(15)
                            .shadow(radius:15)
                            .padding()
                        }
                        
                        //
                        //
                        //SUSTAINIBILITY
                        //
                        //
                        Group {
                            Text("Sustainability:")
                                .foregroundColor(Color("magenta"))
                                .font(.custom("OptimaDisplay-Roman", size: 30))
                                .multilineTextAlignment(.leading)
                                .padding(.top)
                                .padding(.trailing, 180)
                            
                            ZStack {
                                VStack {
                                    Text("Estée Lauder is committed to sustainability through the")
                                        .foregroundColor(Color("darkRose"))
                                        .font(.custom("AkzidenzGroteskBQ-Reg", size: 23))
                                        .multilineTextAlignment(.center)
                                    Text("ELC Green Chemistry Methodology.")
                                        .foregroundColor(Color("darkRose"))
                                        .font(.custom("AkzidenzGroteskBQ-Bold", size: 23))
                                        .multilineTextAlignment(.center)
                                    Text("\nGreen Chemistry Methodology  is a proprietary data-driven approach that follows 10+ years of research and is used to examine the ingredients that go into our formulas.")
                                        .foregroundColor(Color("darkRose"))
                                        .font(.custom("AkzidenzGroteskBQ-Reg", size: 23))
                                        .multilineTextAlignment(.center)
                                    Text("\nThe Nutritious Skincare collection is formulated with responsibly-sourced, naturally-derived* skin-essential nutrients, from wild-harvested Sweet Kelp to Red Algae Ferment that’s fermented by the power of the sun.")
                                        .foregroundColor(Color("darkRose"))
                                        .font(.custom("AkzidenzGroteskBQ-Reg", size: 23))
                                        .multilineTextAlignment(.center)
                                    Text("\n*Per ISO Standard 16128. From plant sources, non-petroleum mineral sources, and/or water.")
                                        .foregroundColor(Color("darkRose"))
                                        .font(.custom("AkzidenzGroteskBQ-Reg", size: 19))
                                        .multilineTextAlignment(.center)
                                    Link(destination: URL(string:"https://www.esteelauder.com/discover/sustainability")!, label: {Text("\nLearn more about the sourcing of our ingredients here!")
                                            .foregroundColor(Color("pink"))
                                            .font(.custom("AkzidenzGroteskBQ-Reg", size: 19))
                                        .multilineTextAlignment(.center)})
                                }
                            }
                            .padding()
                            .background(Rectangle() .foregroundColor(Color("white")))
                            .cornerRadius(15)
                            .shadow(radius:15)
                            .padding()
                            
                            Image("estee 56")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                            Image("estee 57")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                        }
                        
                        //
                        //
                        //ENVIRONMENTALISM
                        //
                        //
                        Group {
                            Text("Environmentalism:")
                                .foregroundColor(Color("magenta"))
                                .font(.custom("OptimaDisplay-Roman", size: 30))
                                .multilineTextAlignment(.center)
                                .padding(.top)
                                .padding(.trailing, 130)
                            ZStack {
                                VStack {
                                    Image("recycle")
                                        .renderingMode(.template)
                                        .foregroundColor(Color("darkRose"))
                                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                                    Text("• Nutritious Radiant Essence Lotion 200ml: Recyclable bottle\n• Nutritious Melting Soft Creme/Mask 50ml: Recyclable jar\n• Nutritious Airy Lotion: Recyclable bottle after removing the pump\n")
                                        .foregroundColor(Color("darkRose"))
                                        .font(.custom("AkzidenzGroteskBQ-Reg", size: 23))
                                        .multilineTextAlignment(.leading)
                                    Text("While our Nutritious 2-in-1 Foam Cleanser 125ml is not completely recyclable, it contains at least 27% post-consumer recycled content.")
                                        .foregroundColor(Color("darkRose"))
                                        .font(.custom("AkzidenzGroteskBQ-Reg", size: 23))
                                        .multilineTextAlignment(.center)
                                    Text("All Nutritious products are EWG certified skincare. This means they have met the Environmental Working Group’s strict formulation standards. ")
                                        .foregroundColor(Color("darkRose"))
                                        .font(.custom("AkzidenzGroteskBQ-Reg", size: 23))
                                        .multilineTextAlignment(.center)
                                    Image("ewg")
                                        .renderingMode(.template)
                                        .foregroundColor(Color("darkRose"))
                                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                                }
                            }
                            .padding()
                            .background(Rectangle() .foregroundColor(Color("white")))
                            .cornerRadius(15)
                            .shadow(radius:15)
                            .padding()
                        }
                        
                        //
                        //
                        //ACTIVISM
                        //
                        //
                        Text("What am I supporting?")
                            .foregroundColor(Color("magenta"))
                            .font(.custom("OptimaDisplay-Roman", size: 30))
                            .multilineTextAlignment(.center)
                            .padding(.top)
                            .padding(.trailing, 70)
                        
                            Group {
                                ZStack {
                                    VStack {
                                        Text("• Estée Lauder Emerging Leaders Fund: ")
                                            .foregroundColor(Color("darkRose"))
                                            .font(.custom("AkzidenzGroteskBQ-Bold", size: 23))
                                            .multilineTextAlignment(.center)
                                        Text("Invests in global organizations that provide opportunities for leadership development, cultivate supportive communities and advocate for emerging leaders who have a daring vision for change.")
                                            .foregroundColor(Color("darkRose"))
                                            .font(.custom("AkzidenzGroteskBQ-Reg", size: 23))
                                            .multilineTextAlignment(.center)
                                        Link(destination: URL(string:"https://www.esteelauder.com/discover/citizenship/estee-lauder-emerging-leaders-fund")!, label: {Text("\nLearn more about the Fund here!")
                                                .foregroundColor(Color("pink"))
                                                .font(.custom("AkzidenzGroteskBQ-Reg", size: 19))
                                            .multilineTextAlignment(.center)})
                                        WebView(urlString: "vI545FzcRB4?si=TZuXfqoQ5Dqtl3dQ")
                                            .frame(width:330, height: 180)
                                            .border(Color("blushPink"), width: 1)
                                    }
                                }
                                .padding()
                                .background(Rectangle() .foregroundColor(Color("white")))
                                .cornerRadius(15)
                                .shadow(radius:15)
                                .padding()
                            }
                            
                            Group {
                                ZStack {
                                    VStack {
                                        Text("• Kode With Klossy: ")
                                            .foregroundColor(Color("darkRose"))
                                            .font(.custom("AkzidenzGroteskBQ-Bold", size: 23))
                                            .multilineTextAlignment(.center)
                                        Text("Estée Lauder has partnered with Karlie Kloss to strengthen the brand’s support of her non-profit, Kode With Klossy and developed a multi-faceted program to educate, inspire and mentor summer camp scholars.")
                                            .foregroundColor(Color("darkRose"))
                                            .font(.custom("AkzidenzGroteskBQ-Reg", size: 23))
                                            .multilineTextAlignment(.center)
                                        Link(destination: URL(string:"https://www.esteelauder.com/blog-article-kode-with-klossy-learn-to-code-partnership")!, label: {Text("\nLearn more about how we support KWK scholars to make apps like these here!")
                                                .foregroundColor(Color("pink"))
                                                .font(.custom("AkzidenzGroteskBQ-Reg", size: 19))
                                            .multilineTextAlignment(.center)})
                                        WebView(urlString: "18xrutPuV2M?si=locZpFGXf5PjYMa8")
                                            .frame(width:330, height: 180)
                                            .border(Color("blushPink"), width: 1)
                                    }
                                }
                                .padding()
                                .background(Rectangle() .foregroundColor(Color("white")))
                                .cornerRadius(15)
                                .shadow(radius:15)
                                .padding()
                            }
                            
                        Group {
                            ZStack {
                                VStack {
                                    Text("• Breast Cancer Campaign: ")
                                        .foregroundColor(Color("darkRose"))
                                        .font(.custom("AkzidenzGroteskBQ-Bold", size: 23))
                                        .multilineTextAlignment(.center)
                                    Text("Estée Lauder is the pioneer brand of The Estée Lauder Companies' Breast Cancer Campaign (BCC), driving BCC's mission to create a breast cancer-free world through supporting research, education and medical services.")
                                        .foregroundColor(Color("darkRose"))
                                        .font(.custom("AkzidenzGroteskBQ-Reg", size: 23))
                                        .multilineTextAlignment(.center)
                                    Link(destination: URL(string:"https://www.esteelauder.com/products/1914/product-catalog/landing-pages/pink-ribbon")!, label: {Text("\nLearn more about how we support the Breast Cancer Campaign here!")
                                            .foregroundColor(Color("pink"))
                                            .font(.custom("AkzidenzGroteskBQ-Reg", size: 19))
                                        .multilineTextAlignment(.center)})
                                    Link(destination: URL(string:"https://www.esteelauder.com/products/1914/product-catalog/landing-pages/pink-ribbon")!, label: {Text("\nOr, shop the Pink Ribbon Collection here!")
                                            .foregroundColor(Color("pink"))
                                            .font(.custom("AkzidenzGroteskBQ-Reg", size: 19))
                                        .multilineTextAlignment(.center)})
                                }
                            }
                            .padding()
                            .background(Rectangle() .foregroundColor(Color("white")))
                            .cornerRadius(15)
                            .shadow(radius:15)
                            .padding()
                        }
                    }
                }
            }
        }
    }
}

struct info_Previews: PreviewProvider {
    static var previews: some View {
        info()
    }
}
