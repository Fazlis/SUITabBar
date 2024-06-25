//
//  SwiftUIView 2.swift
//  
//
//  Created by Iskandar Fazliddinov on 25/06/24.
//

import SwiftUI

public struct SUITabBar<Content: View>: View {
    let tabs: [TabItemData]
    @Binding var selectedIndex: Int
    @ViewBuilder let content: (Int) -> Content

    public var body: some View {
        ZStack {
            TabView(selection: $selectedIndex) {
                ForEach(tabs.indices, id: \.self) { index in
                    content(index)
                        .tag(index)
                }
            }
            
            VStack {
                Spacer()
                SUITabView(tabbarItems: tabs, selectedIndex: $selectedIndex)
            }
            .padding(.bottom, 8)
        }
    }
}
