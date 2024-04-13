//
//  CardView.swift
//  Hike
//
//  Created by Kathiravan Murali on 14/12/23.
//

import SwiftUI

struct CardView: View {
    @State private var imageNumber = 1
    @State private var randomNumber = 1
    @State private var isShowingSheet = false
    
    func randomImage()
    {
        repeat
        {
            randomNumber = Int.random(in: 1...5)
        }while randomNumber == imageNumber
        
        imageNumber = randomNumber
        
    }
    
    var body: some View {
        ZStack {
            CustomBackgroundColor()
            VStack {
                VStack(alignment:.leading){
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(
                            LinearGradient(colors: [.ColorGrayLight,.ColorGrayMedium], startPoint: .top, endPoint: .bottom))
                        Button
                        {
                            print("the button was pressed")
                            isShowingSheet.toggle()
                        }
                        label :
                        {
                            CustomButton()
                        }
                        .sheet(isPresented: $isShowingSheet){
                            SettingView()
                                .presentationDragIndicator(.visible)
                                .presentationDetents([.medium,.large])
                        }
                    }
                    Text("Fun and enjoyable outdoor activity for friends and families")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.ColorGrayMedium)
                }
                .padding(.horizontal,30)
                ZStack {
                    
                    CustomCricleView()
                    
                    Image("image-\(imageNumber)")
                        .resizable()
                    .scaledToFit()
                    .animation(.interpolatingSpring,value: imageNumber)
                    //when value of value changes the animations will trigger
                }
                
                Button
                {
                    randomImage()
                }label: {
                    Text("Explore More")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(LinearGradient(colors: [.ColorGreenLight,.ColorGreenMedium], startPoint: .top, endPoint: .bottom))
                        .shadow(color: .black.opacity(0.25), radius: 0.25,x: 1,y: 2 )
                }
                .buttonStyle(CustomButtonStyle())
            }
        }
        .frame(width: 320 ,height: 570)
    }
}

#Preview {
    CardView()
}
