//
//  ActivityCardComponent.swift
//  Athlinic
//
//  Created by Rajif Afif on 05/05/23.
//

import SwiftUI

struct ActivityCardComponent: View {
    @State var activity: Activity.Struct
    @State var isChecked: Bool = false
    
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
                
                
                NavigationLink(destination: ExcerciseDetailView(activity: $activity)) {
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
                
                if (isChecked) {
                    Image("Checked")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30)
                        .padding()
                    
                } else {
                    Image("Unchecked")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30)
                        .padding()
                        .onTapGesture {
                            isChecked = true
                        }
                    
                }
                
            }
            .padding(10)
            .background(ColorPalette.cardBackground)
            .cornerRadius(20)
            .shadow(radius: 5)
            .navigationBarBackButtonHidden(true)
    }
}

struct ActivityCardComponent_Previews: PreviewProvider {
    static var previews: some View {
        ActivityCardComponent(activity: Activity.Struct(excerciseName: "Bench Press", set: 5, rep: "12, 10, 8, 6, 12", rest: "60"))
    }
}
