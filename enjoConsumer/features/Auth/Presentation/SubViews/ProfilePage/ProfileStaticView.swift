//
//  ProfileStaticView.swift
//  enjoConsumer
//
//  Created by Riadh Gharbi on 23/12/2023.
//

import SwiftUI

struct ProfileStaticView: View {
    let loginController : LoginController<AuthState>
    let userData : UserResponse
    var body: some View {
        VStack{
            AppBar(loginController: loginController).background(.blue)
            
            AsyncImage(url: URL(string: (userData.results ?? []).first!.picture!.large!)).frame(width: 120, height: 120).cornerRadius(100)
           
        
            Text((userData.results ?? []).first!.name!.first! + " " + (userData.results?.first!.name!.last! ?? "") ).foregroundStyle(.background).font(.headline).padding(EdgeInsets.init(top: 0, leading: 0, bottom: 4, trailing: 0))
            Text((userData.results ?? []).first!.email!).foregroundStyle(.background).font(.caption)
            
            HStack{
                HStack{
                    Text("Country").font(.headline).foregroundStyle(.background)
                    Text((userData.results ?? []).first!.location!.country!).font(.caption).foregroundStyle(.background)
                }
                Divider().frame(width: 0.5,height: 40).background(.white).padding()
                HStack{
                    Text("Phone").font(.headline).foregroundStyle(.background)
                    Text((userData.results ?? []).first!.phone!).font(.caption).foregroundStyle(.background)
                }
            }
            
        
            
           
                List {
                            if let results = userData.results {
                                ForEach(results, id: \.id) { result in
                                    Text((result ).name!.first!)
                                }
                            }
                        }
           
                
            
            
            
            
            
            
        }
    }
}


