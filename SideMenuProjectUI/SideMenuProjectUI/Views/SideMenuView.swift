//
//  SideMenuView.swift
//  SideMenuProjectUI
//
//  Created by umitalbayrak on 1.07.2025.
//

import SwiftUI

struct SideMenuView: View {
    @Binding var isShowing : Bool
    @Binding var selectedTab : Int?
    @State private var selectedOption: SideMenuOptionModel?
    var body: some View {
       ZStack{
            if isShowing{
               Rectangle()
                    .opacity(0.3)
                    .ignoresSafeArea()
                    .onTapGesture {
                        isShowing.toggle()
                    }
                HStack{
                    VStack(alignment: .leading, spacing: 32)  {
                        SideMennuHeaderView()
                        
                        VStack {
                            ForEach(SideMenuOptionModel.allCases) { option in
                                Button {
                                    selectedOption = option
                                    selectedTab = option.rawValue
                                    isShowing = false
                                } label: {
                                    SideMenuRowView(option: option, selectedOption: $selectedOption)

                                }

                            }
                        }
                        Spacer()
                    }
                    .padding()
                    .frame(width: 300, alignment: .leading)
                    .background(.white)
                    Spacer()
                }
           }
       }.transition(.move(edge: .leading))
       .animation(.easeOut , value: isShowing)
    }
}

#Preview {
    SideMenuView(isShowing:.constant(true),selectedTab: .constant(0))
}
