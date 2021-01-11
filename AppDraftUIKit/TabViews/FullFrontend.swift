//
//  FullFrontend.swift
//  AppDraftUIKit
//
//  Created by Scott Holmes on 1/4/21.
//

import SwiftUI

struct FullFrontend: View {
    @EnvironmentObject var session: SessionStore

    var body: some View {
        TabView{
            Homepage()
                .tabItem {
                    VStack{
                        Image(systemName: "house")
                        Text("Home")
                    }
                }
            Usreleases()
                .tabItem {
                    VStack{
                        Image(systemName: "calendar")
                        Text("US")
                    }
                }
            Eureleases()
                .tabItem {
                    VStack{
                        Image(systemName: "calendar")
                        Text("EU")
                    }
                }
            News()
                .tabItem {
                    VStack{
                        Image(systemName: "newspaper")
                        Text("News")
                    }
                }
            Accountsettings()
                .tabItem {
                    VStack{
                        Image(systemName: "person")
                        Text("Account")
                    }
                }
        }
    }
}

struct FullFrontend_Previews: PreviewProvider {
    static var previews: some View {
        FullFrontend().environmentObject(SessionStore())
    }
}
