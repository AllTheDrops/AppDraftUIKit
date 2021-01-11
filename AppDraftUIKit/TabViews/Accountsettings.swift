//
//  Accountsettings.swift
//  AppDraftUIKit
//
//  Created by Scott Holmes on 1/4/21.
//

import SwiftUI

struct Accountsettings: View {
    @EnvironmentObject var session: SessionStore
    @State private var isSelectedUS = false
    @State private var isSelectedEU = false
    @State private var isSelectedFCFSUS = false
    @State private var isSelectedRaffleUS = false
    @State private var isSelectedFCFSEU = false
    @State private var isSelectedRaffleEU = false
    
    var body: some View {
        VStack{
            Text("Account").font(.title2)
            NavigationView{
                List{
                    NavigationLink(
                        destination:
                            List{
                                HStack{
                                    Text("First Name:")
                                    Spacer()
                                    Text("Scott").fontWeight(.semibold)
                                }
                                HStack{
                                    Text("Last Name:")
                                    Spacer()
                                    Text("Holmes").fontWeight(.semibold)
                                }
                                HStack{
                                    Text("Email")
                                    Spacer()
                                    Text("Scotth54321@gmail.com").fontWeight(.bold)
                                }
                            }
                        ,
                        label: {
                            HStack{
                                Text("Account Information")
                                Spacer()
                                Image(systemName: "gear")
                            }
                        })
                    NavigationLink(
                        destination:
                            List{
                                SelectedRegionUS(isSelectedUS: $isSelectedUS)
                                SelectedRegionEU(isSelectedEU: $isSelectedEU)
                            }
                        ,
                        label: {
                            HStack{
                                Text("Region")
                                Spacer()
                                Image(systemName: "globe")
                            }
                        })
                    NavigationLink(
                        destination:
                            List{
                                NotificationFCFSUS(isSelectedFCFSUS: $isSelectedFCFSUS)
                                NotificationRaffleUS(isSelectedRaffleUS: $isSelectedRaffleUS)
                                NotificationFCFSEU(isSelectedFCFSEU: $isSelectedFCFSEU)
                                NotificationRaffleUS(isSelectedRaffleUS: $isSelectedRaffleEU)
                            }
                        ,
                        label: {
                            HStack{
                                Text("Notification Settings")
                                Spacer()
                                Image(systemName: "bell.badge")
                            }
                        })
                    NavigationLink(
                        destination:
                            VStack{
                                List{
                                    Text("Subscription Information")
                                        .fontWeight(.bold)
                                    HStack{
                                        Text("Current Subscription:")
                                        Spacer()
                                        Text("Monthly").fontWeight(.semibold)
                                    }
                                    HStack{
                                        Text("Pricing:")
                                        Spacer()
                                        Text("$2.99").fontWeight(.semibold)
                                    }
                                }
                                List{
                                    Text("Pricing Options")
                                        .fontWeight(.bold)
                                    HStack{
                                        Text("Monthly:")
                                        Spacer()
                                        Text("$2.99/Month").fontWeight(.semibold)
                                    }
                                    HStack{
                                        Text("Yearly (Best Value):")
                                        Spacer()
                                        Text("$19.99/Year").fontWeight(.semibold)
                                    }
                                }
                            }
                        ,
                        label: {
                            HStack{
                                Text("Subscription")
                                Spacer()
                                Image(systemName: "creditcard")
                            }
                            
                        })
                        Button(action: {
                        session.signOut()
                        }, label: {
                            Text("Sign Out").fontWeight(.bold)
                        })
                }.navigationBarHidden(true)
            }
        }
    }

}


struct Accountsettings_Previews: PreviewProvider {
    static var previews: some View {
        Accountsettings().environmentObject(SessionStore())
    }
}



struct SelectedRegionUS: View{
    @Binding var isSelectedUS: Bool
    
    var body: some View{
        HStack{
            Button(action: {
                self.isSelectedUS.toggle()
            }, label: {
                HStack{
                    Text("United States")
                    Spacer()
                    Image(systemName: isSelectedUS ? "checkmark.circle.fill" : "checkmark.circle")
                }
            })
        }
    }
}

struct SelectedRegionEU: View{
    @Binding var isSelectedEU: Bool
    
    var body: some View{
            Button(action: {
                self.isSelectedEU.toggle()
            }, label: {
                HStack{
                    Text("Europe")
                    Spacer()
                    Image(systemName: isSelectedEU ? "checkmark.circle.fill" : "checkmark.circle")
                }
            })
    }
}

struct NotificationFCFSUS: View{
    @Binding var isSelectedFCFSUS: Bool
    
    var body: some View{
        Button(action: {
            self.isSelectedFCFSUS.toggle()
        }, label: {
            HStack{
                Text("United States FCFS")
                Spacer()
                Image(systemName: isSelectedFCFSUS ? "checkmark.circle.fill" : "checkmark.circle")
            }
        })
    }
}

struct NotificationRaffleUS: View{
    @Binding var isSelectedRaffleUS: Bool
    
    var body: some View{
        Button(action: {
            self.isSelectedRaffleUS.toggle()
        }, label: {
            HStack{
                Text("United States Raffles")
                Spacer()
                Image(systemName: isSelectedRaffleUS ? "checkmark.circle.fill" : "checkmark.circle")
            }
        })
    }
}

struct NotificationFCFSEU: View{
    @Binding var isSelectedFCFSEU: Bool
    
    var body: some View{
        Button(action: {
            self.isSelectedFCFSEU.toggle()
        }, label: {
            HStack{
                Text("Europe FCFS")
                Spacer()
                Image(systemName: isSelectedFCFSEU ? "checkmark.circle.fill" : "checkmark.circle")
            }
        })
    }
}

struct NotificationRaffleEU: View{
    @Binding var isSelectedRaffleEU: Bool
    
    var body: some View{
        Button(action: {
            self.isSelectedRaffleEU.toggle()
        }, label: {
            HStack{
                Text("Europe Raffles")
                Spacer()
                Image(systemName: isSelectedRaffleEU ? "checkmark.circle.fill" : "checkmark.circle")
            }
        })
    }
}
