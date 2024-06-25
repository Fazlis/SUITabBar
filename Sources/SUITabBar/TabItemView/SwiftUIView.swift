//
//  SwiftUIView.swift
//  
//
//  Created by Iskandar Fazliddinov on 25/06/24.
//

import SwiftUI

public struct TabItemView: View {
    let data: TabItemData
    let isSelected: Bool
    
    public var body: some View {
        VStack {
            Image(systemName: isSelected ? data.selectedImage : data.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 32, height: 32)
                .onAppear{
                    withAnimation(.default){
                        // Код, который требует анимации
                    }
                }
            
            Spacer().frame(height: 4)
            
            Text(data.title)
                .foregroundColor(isSelected ? .black : .gray)
                .font(.system(size: 14))
        }
    }
}
