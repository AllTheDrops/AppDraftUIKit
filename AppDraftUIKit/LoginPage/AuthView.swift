//
//  AuthView.swift
//  AppDraftUIKit
//
//  Created by Scott Holmes on 1/1/21.
//

import SwiftUI

struct SignInView: View{
    @State var email: String = ""
    @State var password: String = ""
    @State var error: String = ""
    @EnvironmentObject var session: SessionStore
    
    func signIn() {
        session.signIn(email: email, password: password) { (reult, error) in
            if let error = error{
                self.error = error.localizedDescription
            } else {
                self.email = ""
                self.password = ""
            }
        }
    }
    
    var body: some View{
        VStack{
            Text("Welcome Back!")
                .font(.system(size: 32, weight: .heavy)).foregroundColor(Color("WebsiteBlue"))
            
            Text("Sign in to continue")
                .font(.system(size: 18, weight: .light))
                .foregroundColor(Color("WebsiteBlue"))
            
            VStack{
                TextField("Email address", text: $email)
                    .font(.system(size: 14))
                    .padding(12)
                    .background(RoundedRectangle(cornerRadius: 5).strokeBorder(lineWidth: 1))
                
                SecureField("Password", text: $password)
                    .font(.system(size: 14))
                    .padding(12)
                    .background(RoundedRectangle(cornerRadius: 5).strokeBorder(lineWidth: 1))
            }
            .padding(.vertical, 64)
            
            Button(action: {signIn()}, label: {
                Text("Sign in")
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .frame(height: 50)
                    .foregroundColor(Color("WebsiteWhite"))
                    .font(.system(size: 14, weight: .bold))
                    .background(Color("WebsiteRed"))
                    .cornerRadius(5)
            })
            
            if (error != ""){
                Text(error)
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundColor(.red)
                    .padding()
            }
            
            Spacer()
            
            NavigationLink(destination: SignUpView()){
                HStack{
                    Text("I'm a new user.")
                        .font(.system(size: 13, weight: .light))
                        .foregroundColor(Color("WebsiteBlue"))
                    
                    Text("Create an account")
                        .font(.system(size: 14, weight: .semibold))
                        .foregroundColor(Color("WebsiteBlue"))
                }
            }
        }
        .padding(.horizontal, 32)
    }
}

struct SignUpView: View{
    @State var email: String = ""
    @State var password: String = ""
    @State var error: String = ""
    @EnvironmentObject var session: SessionStore
    
    
    func signUp(){
        session.signUp(email: email, password: password) { (reult, error) in
            if let error = error{
                self.error = error.localizedDescription
            } else {
                self.email = ""
                self.password = ""
            }
        }
    }
    
    var body: some View{
        VStack{
            Text("Create Account")
                .font(.system(size: 32, weight: .heavy)).foregroundColor(Color("WebsiteBlue"))
            Text("Sign up to get started")
                .font(.system(size: 18, weight: .light))
                .foregroundColor(Color("WebsiteBlue"))
            
            VStack (spacing: 18){
                TextField("Email address", text: $email)
                    .font(.system(size: 14))
                    .padding(12)
                    .background(RoundedRectangle(cornerRadius: 5).strokeBorder(lineWidth: 1))
                
                SecureField("Password", text: $password)
                    .font(.system(size: 14))
                    .padding(12)
                    .background(RoundedRectangle(cornerRadius: 5).strokeBorder(lineWidth: 1))
            }.padding(.vertical, 64)
            
            Button(action: {signUp()}, label: {
                Text("Create Account")
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .frame(height: 50)
                    .foregroundColor(Color("WebsiteWhite"))
                    .font(.system(size: 14, weight: .bold))
                    .background(Color("WebsiteRed"))
                    .cornerRadius(5)
            })
            
            if (error != ""){
                Text(error)
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundColor(Color("WebsiteRed"))
                    .padding()
            }
            
            Spacer()
        }.padding(.horizontal, 32)
        
        
        
    }
}

struct AuthView: View {
    var body: some View {
        NavigationView{
            SignInView()
        }
    }
}

struct AuthView_Previews: PreviewProvider {
    static var previews: some View {
        AuthView().environmentObject(SessionStore())
    }
}
