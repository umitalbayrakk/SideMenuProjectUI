//
//  ContentView.swift
//  SideMenuProjectUI
//
//  Created by umitalbayrak on 1.07.2025.
//

import SwiftUI

struct HomeView: View {
    @State private var showMenu = false
    @State private var selectedTab: Int? = 0
    var body: some View {
        NavigationStack {
            ZStack {
                TabView(selection: $selectedTab) {
                    Text("Dashboard")
                        .tag(0)
                    Text("Performance")
                        .tag(1)
                    Text("Profile")
                        .tag(2)
                    Text("Search")
                        .tag(3)
                    Text("Notifications")
                        .tag(4)
                    Text("Settings")
                        .tag(5)
                }
                SideMenuView(isShowing: $showMenu , selectedTab: $selectedTab)
            }
            .toolbar(showMenu ? .hidden : .visible , for: .navigationBar)
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button(action: {
                        showMenu.toggle()
                    }) {
                        Image(systemName: "line.3.horizontal")
                            .foregroundStyle(.black)
                            .bold()
                    }
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
