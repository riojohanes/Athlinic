//
//  ExcerciseDetailView.swift
//  Athlinic
//
//  Created by Rajif Afif on 05/05/23.
//

import SwiftUI

struct ExcerciseDetailView: View {
    @State var name: String = "Name"
    
    var body: some View {
        ZStack{
            LinearGradient(
                colors: [ColorPalette.backProfGratdientStart, ColorPalette.backProfGratdientEnd],
                startPoint: .top,
                endPoint: .bottom)
            .ignoresSafeArea(.all)
                
                    VStack{
                        ProfileButtonComponent()
                        
                        VStack(alignment: .leading) {
                            ZStack {
                                CardBackgroundComponent()
                                
                                // The Content
                                ScrollView{
                                    VStack {
                                        Spacer()
                                            .frame(height: 20)
                                        HStack{
                                            Image(systemName: "chevron.left")
                                                .frame(width: 24, height: 24)
                                                .foregroundColor(.white)
                                            Spacer()
                                            Text("Excercise")
                                                .foregroundColor(.white)
                                                .font(.system(size: 26, weight: .semibold))
                                        }
                                        
                                        ZStack{
                                            // White Backgounr
                                            Rectangle()
                                                .fill(.white)
                                                .offset(y: 30)
                                            VStack(spacing: 0){
                                                RoundedRectangle(cornerRadius: 20)
                                                    .fill(Color.white)
                                            }
                                            //End White Background
                                            
                                            VStack{
                                                GifView(gifName: "Barbell-Bench-Press")
                                                            .frame(width: 200, height: 200)
                                            }
                                            .padding()
                                        }
                                        .padding(.horizontal)
                                        .offset(y: 10)
                                        
                                        ZStack{
                                            RoundedRectangle(cornerRadius: 20)
                                                .fill(ColorPalette.primary)
                                            
                                            VStack(alignment: .leading){
                                                Text("Dumbell Curl")
                                                    .font(.system(size: 26, weight: .semibold))
                                                Spacer()
                                                    .frame(height: 10)
                                                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam ullamcorper justo ac lacus varius, nec gravida tellus convallis. Quisque id sem vel ligula tincidunt rutrum.")
                                                    .font(.system(size: 13))
                                            }
                                            .padding()
                                        }
                                        
                                        Rectangle()
                                            .fill(.white)
                                            .frame(height: 3)
                                            .padding()
                                        
                                        ZStack{
                                            RoundedRectangle(cornerRadius: 20)
                                                .fill(ColorPalette.bgGray)
                                            
                                            VStack(alignment: .leading){
                                                Text("Steps")
                                                    .foregroundColor(.white)
                                                    .font(.system(size: 26, weight: .semibold))
                                                Spacer()
                                                    .frame(height: 10)
                                                
                                                
                                                // Step 1
                                                Spacer()
                                                    .frame(height: 15)
                                                ZStack{
                                                    RoundedRectangle(cornerRadius: 20)
                                                        .fill(.white)
                                                    
                                                    VStack(alignment: .leading){
                                                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam ullamcorper justo ac lacus varius, nec gravida tellus convallis. Quisque id sem vel ligula tincidunt rutrum.")
                                                            .font(.system(size: 13))
                                                    }
                                                    .padding(.top, 15)
                                                    .padding(.bottom, 15)
                                                    .padding(.leading, 40)
                                                    .padding(.trailing, 15)
                                                    
                                                    // Step Number
                                                    VStack(alignment: .leading){
                                                        ZStack{
                                                            Circle()
                                                                .fill(ColorPalette.primary)
                                                                .frame(width: 50)
                                                            Text("1")
                                                                .font(.system(size: 30))
                                                        }
                                                        Spacer()
                                                    }
                                                    .offset(x: -140, y: -15)
                                                }
                                                
                                                // Step 2
                                                Spacer()
                                                    .frame(height: 30)
                                                ZStack{
                                                    RoundedRectangle(cornerRadius: 20)
                                                        .fill(.white)
                                                    
                                                    VStack(alignment: .leading){
                                                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam ullamcorper justo ac lacus varius, nec gravida tellus convallis. Quisque id sem vel ligula tincidunt rutrum.")
                                                            .font(.system(size: 13))
                                                    }
                                                    .padding(.top, 15)
                                                    .padding(.bottom, 15)
                                                    .padding(.leading, 40)
                                                    .padding(.trailing, 15)
                                                    
                                                    // Step Number
                                                    VStack(alignment: .leading){
                                                        ZStack{
                                                            Circle()
                                                                .fill(ColorPalette.primary)
                                                                .frame(width: 50)
                                                            Text("2")
                                                                .font(.system(size: 30))
                                                        }
                                                        Spacer()
                                                    }
                                                    .offset(x: -140, y: -15)
                                                }
                                                
                                                // Step 3
                                                Spacer()
                                                    .frame(height: 30)
                                                ZStack{
                                                    RoundedRectangle(cornerRadius: 20)
                                                        .fill(.white)
                                                    
                                                    VStack(alignment: .leading){
                                                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam ullamcorper justo ac lacus varius, nec gravida tellus convallis. Quisque id sem vel ligula tincidunt rutrum.")
                                                            .font(.system(size: 13))
                                                    }
                                                    .padding(.top, 15)
                                                    .padding(.bottom, 15)
                                                    .padding(.leading, 40)
                                                    .padding(.trailing, 15)
                                                    
                                                    // Step Number
                                                    VStack(alignment: .leading){
                                                        ZStack{
                                                            Circle()
                                                                .fill(ColorPalette.primary)
                                                                .frame(width: 50)
                                                            Text("3")
                                                                .font(.system(size: 30))
                                                        }
                                                        Spacer()
                                                    }
                                                    .offset(x: -140, y: -15)
                                                }
                                                
                                            }
                                            .padding()
                                            .padding(.horizontal)
                                        }
                                    }
                                }
                                .padding()
                                .clipShape(RoundedRectangle(cornerRadius: 34))
                            }
                        }
                        
                        Spacer()
                            .frame(height: 80)
                    }
                    .padding(.horizontal)
            
            MainNavigationComponent()
        } // End Z Stack
    }
}

struct ExcerciseDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ExcerciseDetailView()
    }
}
