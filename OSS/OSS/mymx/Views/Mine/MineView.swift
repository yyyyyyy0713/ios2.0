//
//  MineView.swift
//  mymx
//
//  Created by ice on 2024/11/8.
//

import SwiftUI
import NukeUI

struct MineView: View {
    @EnvironmentObject var modelData: ModelData
    
    @State private var showProfile = false
    let screenWidth = UIScreen.main.bounds.size.width

    var body: some View {
        NavigationStack{
            ScrollView{
                VStack(spacing: 0){
                    LazyImage(url: URL(string: "https://p0.itc.cn/images01/20231215/7efccafd7a074ac6917083d845c8eaf3.jpeg")){ state in
                        state.image?
                            .resizable()
                            .scaledToFill()
                            .frame(height: 400)
                    }
                    .frame(height: 400)
                    .padding(.top, -80)

                }
                
            }
            .ignoresSafeArea(.all)
            .toolbar{
                if(modelData.user != nil){
                    ToolbarItem(placement: .topBarTrailing){
                        Button{
                            showProfile.toggle()
                        } label: {
                            Label("User Profile", systemImage: "gearshape")
                        }
                    }
                }
            }
            .toolbarBackground(.hidden, for: .navigationBar)
            .sheet(isPresented: $showProfile, content: {
                ProfileView(showProfile:$showProfile)
            })
        }
    }
}


#Preview {
    let modelData = ModelData()
    return MineView()
        .environmentObject(modelData)
}
