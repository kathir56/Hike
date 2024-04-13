//
//  CustomBackgroundColor.swift
//  Hike
//
//  Created by Kathiravan Murali on 14/12/23.
//

import SwiftUI

struct CustomBackgroundColor: View {
    var body: some View {
        
        ZStack
        {
            Color.colorGreenDark
                .cornerRadius(40)
                .offset(y:12)
            Color.colorGreenLight
                .cornerRadius(40)
                .offset(y:3)
                .opacity(0.85)
            
            LinearGradient(colors: [.ColorGreenLight,.ColorGreenMedium], startPoint: .top, endPoint: .bottom)
                .cornerRadius(40)
        }
    }
}

#Preview {
    CustomBackgroundColor()
        .padding()
}
