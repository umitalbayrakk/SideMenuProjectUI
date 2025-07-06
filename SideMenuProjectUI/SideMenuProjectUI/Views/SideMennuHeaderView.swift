//
//  SideMennuHeaderView.swift
//  SideMenuProjectUI
//
//  Created by umitalbayrak on 1.07.2025.
//

import SwiftUI

struct SideMennuHeaderView: View {
    var body: some View {
        HStack {
            Image(systemName: "person.circle")
                .imageScale(.large)
                .foregroundStyle(.white)
                .frame(width: 48, height: 48)
                .background(.blue)
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .padding(.vertical)
            VStack(alignment: .leading, spacing: 8)  {
              Text("Ümit Albayrak")
                    .font(.subheadline)
                Text("umitalbayrakmedya@icloud.com")
                    .font(.footnote)
                    .tint(.gray)
            }
        }
    }
}

#Preview {
    SideMennuHeaderView()
}
