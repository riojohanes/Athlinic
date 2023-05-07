//
//  MainNavigationComponent.swift
//  Athlinic
//
//  Created by Rajif Afif on 03/05/23.
//

import SwiftUI

struct MainNavigationComponent: View {
    
    @State var selection = 0
    @State private var offsetValue: CGFloat = -5
    @State private var isPositionMarkerHidden = false
    @Binding var currentPage: String

    
    var body: some View {
        VStack{
            Spacer()
            ZStack{
                
                // White Background
                RoundedRectangle(cornerRadius: 50)
                    .fill(Color.white)
                    .frame(height: 78)
                    .shadow(color: ColorPalette.shadowColor, radius: 4, x: 0, y: 2)
                    .padding(.horizontal)
                
                // Position Marker
                if (currentPage == "achievement"
                || currentPage == "today-schedule"
                || currentPage == "equipments" ) {
                    RoundedRectangle(cornerRadius: 50)
                        .fill(ColorPalette.primary)
                        .frame(width: 100, height: 67)
                        .offset(x: offsetValue)
                }
                
                // Icon Images
                HStack(spacing: 80){
                    Image("menuIconAchievement")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 40)
                        .onTapGesture {
                            withAnimation {
                                self.offsetValue = calculateOffsetByPosition(position: 1) // Change the offset value
                            }
                            
                            currentPage = "achievement"
                        }
                    Image("menuIconCalendar")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 40)
                        .onTapGesture {
                            withAnimation {
                                self.offsetValue = calculateOffsetByPosition(position: 2) // Change the offset value
                            }
                            currentPage = "today-schedule"
                        }
                    Image("menuIconEquipment")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 40)
                        .onTapGesture {
                            withAnimation {
                                self.offsetValue = calculateOffsetByPosition(position: 3) // Change the offset value
                            }
                            currentPage = "equipments"
                        }
                }
            }
        }
        .offset(y: 15)
    }
}

func calculateOffsetByPosition(position: Int) -> CGFloat {
    switch position {
    case 1:
        return -118
    case 3:
        return 115.0
    default:
        return -5
    }
}

struct MainNavigationComponent_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            MainNavigationComponent(currentPage: .constant("something"))
        }
    }
}
