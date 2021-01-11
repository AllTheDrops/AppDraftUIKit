//
//  News.swift
//  AppDraftUIKit
//
//  Created by Scott Holmes on 1/4/21.
//

import SwiftUI

struct News: View {
    var body: some View {
        VStack{
            Text("Past Releases").font(.title2)
            NavigationView{
                ScrollView{
                    VStack{
                        HStack{
                            Spacer()
                            VStack{
                                Text("Air Force 1 x Off White University Gold")
                                Image("OffWhiteAF1").resizable().aspectRatio(contentMode: .fit)
                                NavigationLink(
                                    destination: SampleView(),
                                    label: {
                                        Text("View Details")
                                            .background(Color("WebsiteRed"))
                                            .cornerRadius(5)
                                            .foregroundColor(Color("WebsiteWhite"))
                                    })
                            }
                            Spacer()
                        }.border(Color("WebsiteBlue")).border(Color("WebsiteBlue")).padding()
                        HStack{
                            Spacer()
                            VStack{
                                Text("Air Force 1 x Off White University Gold")
                                Image("OffWhiteAF1").resizable().aspectRatio(contentMode: .fit)
                                NavigationLink(
                                    destination: SampleView(),
                                    label: {
                                        Text("View Details")
                                            .background(Color("WebsiteRed"))
                                            .cornerRadius(5)
                                            .foregroundColor(Color("WebsiteWhite"))
                                    })
                            }
                            Spacer()
                        }.border(Color("WebsiteBlue")).border(Color("WebsiteBlue")).padding()
                        HStack{
                            Spacer()
                            VStack{
                                Text("Air Force 1 x Off White University Gold")
                                Image("OffWhiteAF1").resizable().aspectRatio(contentMode: .fit)
                                NavigationLink(
                                    destination: SampleView(),
                                    label: {
                                        Text("View Details")
                                            .background(Color("WebsiteRed"))
                                            .cornerRadius(5)
                                            .foregroundColor(Color("WebsiteWhite"))
                                    })
                            }
                            Spacer()
                        }.border(Color("WebsiteBlue")).padding()
                    }
                }
                .navigationBarHidden(true)
            }
        }
    }
}

struct News_Previews: PreviewProvider {
    static var previews: some View {
        News()
    }
}
