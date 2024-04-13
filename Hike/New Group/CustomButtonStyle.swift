//
//  CustomButtonStyle.swift
//  Hike
//
//  Created by Kathiravan Murali on 15/12/23.
//

import Foundation
import SwiftUI

struct CustomButtonStyle : ButtonStyle
{
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal,30)
            .background(
                //conditonal statement
                //Condition ? A : B
                configuration.isPressed ?
                LinearGradient(colors: [.ColorGrayLight,.ColorGrayMedium], startPoint: .top, endPoint: .bottom)
                :
                LinearGradient(colors: [.ColorGrayMedium,.ColorGrayLight], startPoint: .top, endPoint: .bottom)
            )
            .cornerRadius(40)
    }
    
    
}
