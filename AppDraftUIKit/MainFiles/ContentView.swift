//
//  ContentView.swift
//  AppDraftUIKit
//
//  Created by Scott Holmes on 12/30/20.
//

import SwiftUI
import Firebase

struct ContentView: View {
    @EnvironmentObject var session: SessionStore
    
    func getUser(){
        session.listen()
    }
    
    
    var body: some View {
        Group{
            if (session.session != nil){
                FullFrontend()
            }else{
                AuthView()
            }
        }.onAppear(perform: getUser)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(SessionStore())
    }
}
