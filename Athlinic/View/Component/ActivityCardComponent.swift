//
//  ActivityCardComponent.swift
//  Athlinic
//
//  Created by Rajif Afif on 05/05/23.
//

import SwiftUI

struct ActivityCardComponent: View {
    let activity: Activity.Struct
//    @State var isChecked: Bool
    
    var body: some View {
        HStack(spacing: 15) {
            ZStack{
                Circle()
                    .fill(
                        RadialGradient(
                            gradient: Gradient(colors: [ColorPalette.iconGradientEnd, ColorPalette.iconGradientStart]),
                            center: .center,
                            startRadius: 50,
                            endRadius: 0
                        )
                    )
                Image("menuIconEquipment")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30)
            }
            .frame(width: 55)
            
            VStack(alignment: .leading) {
                Text(activity.excerciseName)
                    .font(.headline)
                    .foregroundColor(.white)
                    .font(.system(size: 20))
                
                HStack{
                    VStack(alignment: .leading){
                        Text("\(activity.set) set (\(String(activity.rep)) rep")
                            .font(.subheadline)
                            .foregroundColor(.white)
                        
                        Text("\(activity.rest)s rest")
                            .font(.subheadline)
                            .foregroundColor(.white)
                            
                    }
                    Spacer()
//                    ActivityCheckbox(isChecked: $isChecked)
//                        .offset(y: -9)
                }
            }

            
        }
        .padding(10)
        .background(ColorPalette.cardBackground)
        .cornerRadius(20)
        .shadow(radius: 5)
    }
}

struct ActivityCardComponent_Previews: PreviewProvider {
    static var previews: some View {
        TodayScheduleView()
    }
}
