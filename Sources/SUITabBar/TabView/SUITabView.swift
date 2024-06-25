//
//  File.swift
//  
//
//  Created by Iskandar Fazliddinov on 25/06/24.
//

import SwiftUI

public struct SUITabView: View {
    let tabbarItems: [TabItemData]
    var height: CGFloat = 70
    var width: CGFloat = UIScreen.main.bounds.width - 32
    var cornerRadius: CGFloat = 0
    var shadowRadius: CGFloat = 0
    var shadowXOffset: CGFloat = 0
    var shadowYOffset: CGFloat = 0
    
    @Binding var selectedIndex: Int
    
    var tabIndices: Range<Int> {
        return 0..<tabbarItems.count
    }
    
    public var body: some View {
        HStack {
            Spacer()
            
            ForEach(tabIndices, id: \.self) { index in
                let item = tabbarItems[index]
                Button {
                    self.selectedIndex = index
                } label: {
                    let isSelected = selectedIndex == index
                    TabItemView(data: item, isSelected: isSelected)
                }
                Spacer()
            }
        }
        .frame(width: width, height: height)
        .background(Color.white)
        .cornerRadius(cornerRadius)
        .shadow(
            radius: shadowRadius,
            x: shadowXOffset,
            y: shadowYOffset
        )
    }
}
