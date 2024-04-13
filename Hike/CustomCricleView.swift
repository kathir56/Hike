//
//  CustomCricleView.swift
//  Hike
//
//  Created by Kathiravan Murali on 15/12/23.
//

import SwiftUI

struct CustomCricleView: View {
    @State private var isAnimatedGradient : Bool = false
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(
                        colors: [.ColorIndigoMedium,.ColorSalmonLight],
                        startPoint: isAnimatedGradient ? .topLeading : .bottomLeading,
                        endPoint: isAnimatedGradient ?  .bottomTrailing : .topTrailing
                    )
                )
                .onAppear{
                    withAnimation(.linear(duration: 3.0).repeatForever(autoreverses:true)){
                        isAnimatedGradient.toggle()
                    }
                }
            MotionAnimationView()
            
        }
        .frame(width: 256,height: 256)
    }
}

#Preview {
    CustomCricleView()
}
