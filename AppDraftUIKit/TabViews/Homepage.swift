//
//  Homepage.swift
//  AppDraftUIKit
//
//  Created by Scott Holmes on 1/4/21.
//

import SwiftUI

struct Homepage: View {
    var body: some View {
        NavigationView{
            VStack{
                Image("Logo3").resizable().aspectRatio(contentMode: .fit).edgesIgnoringSafeArea(.all)
                ScrollView{
                    VStack{
                        Text("Upcoming US Releases").font(.title2).foregroundColor(Color("WebsiteBlue")).padding()
                        HStack{
                            Spacer()
                            VStack{
                                Text("Mar. 1st").foregroundColor(Color("WebsiteBlue"))
                                Image("Jordan1BGI").resizable().aspectRatio(contentMode: .fit).padding(.horizontal, 10)
                                NavigationLink(
                                    destination: SampleView(),
                                    label: {
                                        Text("Details")
                                            .background(Color("WebsiteRed"))
                                            .cornerRadius(5)
                                            .foregroundColor(Color("WebsiteWhite"))
                                    })
                                
                            }.border(Color("WebsiteBlue"))
                            VStack{
                                Text("Mar. 1st").foregroundColor(Color("WebsiteBlue"))
                                Image("Jordan1BGI").resizable().aspectRatio(contentMode: .fit).padding(.horizontal, 10)
                                NavigationLink(
                                    destination: SampleView(),
                                    label: {
                                        Text("Details")
                                            .background(Color("WebsiteRed"))
                                            .cornerRadius(5)
                                            .foregroundColor(Color("WebsiteWhite"))
                                    })
                                
                            }.border(Color("WebsiteBlue"))
                            VStack{
                                Text("Mar. 1st").foregroundColor(Color("WebsiteBlue"))
                                Image("Jordan1BGI").resizable().aspectRatio(contentMode: .fit).padding(.horizontal, 10)
                                NavigationLink(
                                    destination: SampleView(),
                                    label: {
                                        Text("Details")
                                            .background(Color("WebsiteRed"))
                                            .cornerRadius(5)
                                            .foregroundColor(Color("WebsiteWhite"))
                                    })
                                
                            }.border(Color("WebsiteBlue"))
                            Spacer()
                        }
                        Spacer()
                        Text("Upcoming EU Releases").font(.title2).foregroundColor(Color("WebsiteBlue")).padding()
                        HStack{
                            Spacer()
                            VStack{
                                Text("Mar. 1st").foregroundColor(Color("WebsiteBlue"))
                                Image("Jordan1BGI").resizable().aspectRatio(contentMode: .fit).padding(.horizontal, 10)
                                NavigationLink(
                                    destination: SampleView(),
                                    label: {
                                        Text("Details")
                                            .background(Color("WebsiteRed"))
                                            .cornerRadius(5)
                                            .foregroundColor(Color("WebsiteWhite"))
                                    })
                            }.border(Color("WebsiteBlue"))
                            VStack{
                                Text("Mar. 1st").foregroundColor(Color("WebsiteBlue"))
                                Image("Jordan1BGI").resizable().aspectRatio(contentMode: .fit).padding(.horizontal, 10)
                                NavigationLink(
                                    destination: SampleView(),
                                    label: {
                                        Text("Details")
                                            .background(Color("WebsiteRed"))
                                            .cornerRadius(5)
                                            .foregroundColor(Color("WebsiteWhite"))
                                    })
                            }.border(Color("WebsiteBlue"))
                            VStack{
                                Text("Mar. 1st").foregroundColor(Color("WebsiteBlue"))
                                Image("Jordan1BGI").resizable().aspectRatio(contentMode: .fit).padding(.horizontal, 10)
                                NavigationLink(
                                    destination: SampleView(),
                                    label: {
                                        Text("Details")
                                            .background(Color("WebsiteRed"))
                                            .cornerRadius(5)
                                            .foregroundColor(Color("WebsiteWhite"))
                                    })
                            }.border(Color("WebsiteBlue"))
                            Spacer()
                        }
                        Spacer()
                        Text("Past Releases").font(.title2).foregroundColor(Color("WebsiteBlue")).padding()
                        HStack{
                            Spacer()
                            VStack{
                                Text("Mar. 1st").foregroundColor(Color("WebsiteBlue"))
                                Image("Jordan1BGI").resizable().aspectRatio(contentMode: .fit).padding(.horizontal, 10)
                                NavigationLink(
                                    destination: SampleView(),
                                    label: {
                                        Text("Details")
                                            .background(Color("WebsiteRed"))
                                            .cornerRadius(5)
                                            .foregroundColor(Color("WebsiteWhite"))
                                    })
                            }.border(Color("WebsiteBlue"))
                            VStack{
                                Text("Mar. 1st").foregroundColor(Color("WebsiteBlue"))
                                Image("Jordan1BGI").resizable().aspectRatio(contentMode: .fit).padding(.horizontal, 10)
                                NavigationLink(
                                    destination: SampleView(),
                                    label: {
                                        Text("Details")
                                            .background(Color("WebsiteRed"))
                                            .cornerRadius(5)
                                            .foregroundColor(Color("WebsiteWhite"))
                                    })
                            }.border(Color("WebsiteBlue"))
                            VStack{
                                Text("Mar. 1st").foregroundColor(Color("WebsiteBlue"))
                                Image("Jordan1BGI").resizable().aspectRatio(contentMode: .fit).padding(.horizontal, 10)
                                NavigationLink(
                                    destination: SampleView(),
                                    label: {
                                        Text("Details")
                                            .background(Color("WebsiteRed"))
                                            .cornerRadius(5)
                                            .foregroundColor(Color("WebsiteWhite"))
                                    })
                            }.border(Color("WebsiteBlue"))
                            Spacer()
                        }
                        Spacer()
                    }.navigationBarHidden(true)
                }
            }
        }
    }
}

struct Homepage_Previews: PreviewProvider {
    static var previews: some View {
        Homepage()
    }
}
