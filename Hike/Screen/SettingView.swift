//
//  SettingView.swift
//  Hike
//
//  Created by Kathiravan Murali on 15/12/23.
//

import SwiftUI

struct SettingView: View {
    
    private var alternateAppIcons : [String] = ["AppIcon-Backpack","AppIcon-Camera","AppIcon-Campfire","AppIcon-MagnifyingGlass","AppIcon-Map","AppIcon-Mushroom"]
    var body: some View {
        List
        {
            Section {
                HStack {
                    Spacer()
                    Image(systemName: "laurel.leading")
                        .font(.system(size: 66,weight: .black))
                    VStack (spacing: -10){
                        Text("Hike")
                            .font(.system(size: 66,weight: .black))
                        Text("Editor's Choice")
                            .fontWeight(.medium)
                    }
                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 66,weight: .black))
                    Spacer()
                }
                .foregroundStyle(LinearGradient(colors: [.ColorGreenLight,.ColorGreenMedium,.ColorGreenDark], startPoint: .top, endPoint: .bottom))
                .padding(.top,8)
                
                VStack (spacing:8){
                    Text("Where you can find \nperferct tracks?")
                        .font(.title2)
                        .fontWeight(.heavy)
                    Text("The hike which looks gorgeous but is photos even better once you are actually there. The hike that you hope do again someday. \nFind the best day hikes in the app")
                        .font(.footnote)
                        .italic()
                    Text("Dust off the boots! It's time for a walk")
                        .fontWeight(.heavy)
                        .foregroundColor(.ColorGreenMedium)
                }
                .multilineTextAlignment(.center)
                .padding(.bottom,16)
                .frame(maxWidth: .infinity)
                
            }
            .listRowSeparator(.hidden)
            
            Section(header:Text("Alternate Icons"))
            {
                ScrollView(.horizontal,showsIndicators:false)
                {
                    HStack (spacing:12){
                        ForEach(alternateAppIcons.indices, id: \.self) { item in
                            Button
                            {
                                UIApplication.shared.setAlternateIconName(alternateAppIcons[item])
                                {
                                    error in
                                    if error != nil{
                                        print("Failed to load the image")
                                    }
                                    else
                                    {
                                        print("Successfully image loaded")
                                    }
                                }
                            }label: {
                                    Image("\(alternateAppIcons[item])-Preview")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 80,height: 80)
                                    .cornerRadius(16)
                            
                            }
                        .buttonStyle(.borderless)
                        }
                    }
                    
                }
                .padding(.top,12)
                Text("Choose your favourite app icon from the collection above")
                    .frame(minWidth: 0,maxWidth: .infinity)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .font(.footnote)
                    .padding(.bottom,12)
            }
            .listRowSeparator(.hidden)
            
            Section(header:Text("ABOUT THE APP")
                    ,footer: HStack{
                Spacer()
                Text("Copyright © All right reserved")
                Spacer()
            }
                .padding(.vertical,8)
            )
            {
                CustomListRow(rowLabel: "Application", rowIcon: "apps.iphone", rowContent: "Hike", rowTintColor: .blue)
                CustomListRow(rowLabel: "Compatibility", rowIcon: "info.circle", rowContent: "iOS, iPadOS", rowTintColor: .red)
                CustomListRow(rowLabel: "Technology", rowIcon: "swift", rowContent: "Swift", rowTintColor: .orange)
                CustomListRow(rowLabel: "Version", rowIcon: "gear", rowContent: "1.0", rowTintColor: .purple)
                CustomListRow(rowLabel: "Developer", rowIcon: "ellipsis.curlybraces", rowContent: "Kathir", rowTintColor: .mint)
                CustomListRow(rowLabel: "Designer", rowIcon: "paintpalette", rowContent: "Maran", rowTintColor: .pink)
                CustomListRow(rowLabel: "Website", rowIcon: "globe", rowTintColor: .indigo, rowLinkLabel: "Credo Academy", rowLinkDestination: "https://credo.academy")
            }
        }
        
    }
}

#Preview {
    SettingView()
}
