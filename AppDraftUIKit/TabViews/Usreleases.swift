//
//  Usreleases.swift
//  AppDraftUIKit
//
//  Created by Scott Holmes on 1/4/21.
//

import SwiftUI

struct Usreleases: View {
    var body: some View {
        VStack{
            Text("US Releases").font(.title2)
            NavigationView{
                ScrollView{
                    HStack{
                        Spacer()
                        VStack{
                            Text("Mar. 1st")
                            Image("Mocha").resizable().aspectRatio(contentMode: .fit)
                            NavigationLink(
                                destination: SampleView(),
                                label: {
                                    Text("View Details")
                                        .background(Color("WebsiteRed"))
                                        .cornerRadius(5)
                                        .foregroundColor(Color("WebsiteWhite"))
                                })
                        }.border(Color("WebsiteBlue"))
                        VStack{
                            Text("Mar. 1st")
                            Image("Mocha").resizable().aspectRatio(contentMode: .fit)
                            NavigationLink(
                                destination: SampleView(),
                                label: {
                                    Text("View Details")
                                        .background(Color("WebsiteRed"))
                                        .cornerRadius(5)
                                        .foregroundColor(Color("WebsiteWhite"))
                                })
                        }.border(Color("WebsiteBlue"))
                        Spacer()
                    }.padding(.vertical, 5)
                    HStack{
                        Spacer()
                        VStack{
                            Text("Mar. 1st")
                            Image("Mocha").resizable().aspectRatio(contentMode: .fit)
                            NavigationLink(
                                destination: SampleView(),
                                label: {
                                    Text("View Details")
                                        .background(Color("WebsiteRed"))
                                        .cornerRadius(5)
                                        .foregroundColor(Color("WebsiteWhite"))
                                })
                        }.border(Color("WebsiteBlue"))
                        VStack{
                            Text("Mar. 1st")
                            Image("Mocha").resizable().aspectRatio(contentMode: .fit)
                            NavigationLink(
                                destination: SampleView(),
                                label: {
                                    Text("View Details")
                                        .background(Color("WebsiteRed"))
                                        .cornerRadius(5)
                                        .foregroundColor(Color("WebsiteWhite"))
                                })
                        }.border(Color("WebsiteBlue"))
                        Spacer()
                    }.padding(.vertical, 5)
                    HStack{
                        Spacer()
                        VStack{
                            Text("Mar. 1st")
                            Image("Mocha").resizable().aspectRatio(contentMode: .fit)
                            NavigationLink(
                                destination: SampleView(),
                                label: {
                                    Text("View Details")
                                        .background(Color("WebsiteRed"))
                                        .cornerRadius(5)
                                        .foregroundColor(Color("WebsiteWhite"))
                                })
                        }.border(Color("WebsiteBlue"))
                        VStack{
                            Text("Mar. 1st")
                            Image("Mocha").resizable().aspectRatio(contentMode: .fit)
                            NavigationLink(
                                destination: SampleView(),
                                label: {
                                    Text("View Details")
                                        .background(Color("WebsiteRed"))
                                        .cornerRadius(5)
                                        .foregroundColor(Color("WebsiteWhite"))
                                })
                        }.border(Color("WebsiteBlue"))
                        Spacer()
                    }.padding(.vertical, 5)
                    HStack{
                        Spacer()
                        VStack{
                            Text("Mar. 1st")
                            Image("Mocha").resizable().aspectRatio(contentMode: .fit)
                            NavigationLink(
                                destination: SampleView(),
                                label: {
                                    Text("View Details")
                                        .background(Color("WebsiteRed"))
                                        .cornerRadius(5)
                                        .foregroundColor(Color("WebsiteWhite"))
                                })
                        }.border(Color("WebsiteBlue"))
                        VStack{
                            Text("Mar. 1st")
                            Image("Mocha").resizable().aspectRatio(contentMode: .fit)
                            NavigationLink(
                                destination: SampleView(),
                                label: {
                                    Text("View Details")
                                        .background(Color("WebsiteRed"))
                                        .cornerRadius(5)
                                        .foregroundColor(Color("WebsiteWhite"))
                                })
                        }.border(Color("WebsiteBlue"))
                        Spacer()
                    }.padding(.vertical, 5)
                }.navigationBarHidden(true)
            }
        }
    }
}

struct Usreleases_Previews: PreviewProvider {
    static var previews: some View {
        Usreleases()
    }
}
