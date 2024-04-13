//
//  CustomButton.swift
//  Hike
//
//  Created by Kathiravan Murali on 15/12/23.
//

import SwiftUI

struct CustomButton: View {
    var body: some View {
        ZStack
        {
            Circle()
                .fill(
                    LinearGradient(colors:[.white,.ColorGreenLight,.ColorGreenLight], startPoint: .top, endPoint: .bottom))
            Circle()
                .stroke(LinearGradient(colors: [.ColorGreenLight,.ColorGrayMedium], startPoint: .top, endPoint: .bottom),lineWidth: 4)
            Image(systemName: "figure.hiking")
                .fontWeight(.black)
                .font(.system(size: 30))
                .foregroundStyle(LinearGradient(colors: [.ColorGrayLight,.ColorGrayMedium], startPoint: .top, endPoint: .bottom))
        }
        .frame(width: 58,height: 58)
    }
}

#Preview {
    CustomButton()
        .previewLayout(.sizeThatFits)
        .padding()
}
