//
//  ExcerciseDetailView.swift
//  Athlinic
//
//  Created by Rajif Afif on 05/05/23.
//

import SwiftUI
import SDWebImageSwiftUI
//import AnimatedImage

struct ExcerciseDetailView: View {
    @State var name: String = "Name"
    @Binding var activity: Activity.Struct
    
    let youtubeURL = URL(string: "https://www.youtube.com/shorts/0cXAp6WhSj4")!
    
    let steps: [String] = [
        "Set Up Properly: The first step in executing a proper bench press is to set up your equipment and body position. Make sure your bench is in a stable position, and your feet are firmly planted on the ground. Your back should be flat against the bench, and your shoulder blades should be retracted and squeezed together.",
        "Grip the Bar Correctly: Your grip on the bar is an essential aspect of your bench press technique. You should grip the bar with your palms facing away from your body, and your thumbs wrapped around the bar. Your grip should be shoulder-width apart or slightly wider.",
        "Engage Your Core: Before you start lifting, engage your core by taking a deep breath and bracing your abdominal muscles. This will help stabilize your spine and prevent any arching or bending during the lift.",
        "Lower the Bar with Control: When lowering the bar, focus on controlling the weight and keeping your elbows tucked in at a 45-degree angle. This will help prevent shoulder injuries and improve your pressing power.",
        "Press with Explosive Force: When pressing the bar back up, focus on pushing with explosive force and driving your feet into the ground. This will help activate your legs and provide a stable base of support.",
        "Keep Your Shoulders Down: Throughout the lift, make sure to keep your shoulders down and away from your ears. This will help prevent any undue stress on your shoulders and keep the focus on your chest and triceps.",
        "Use Proper Breathing Technique: Proper breathing technique is crucial when performing the bench press. Take a deep breath before lowering the bar and exhale forcefully as you press it back up.",
        "Maintain Proper Elbow Position: Finally, make sure to maintain proper elbow position throughout the lift. Your elbows should be tucked in close to your body and not flared out to the sides. This will help prevent shoulder injuries and maximize your pressing power."
    ]
    
    let description = """
        The bench press is a popular strength training exercise that primarily targets the chest muscles (pectoralis major and minor). The exercise can be done with various grips and angles to target different areas of the chest and can be performed with different variations such as incline, decline or flat bench. It is a fundamental exercise in bodybuilding, powerlifting, and general fitness training.
        Overall, the bench press is an effective exercise for targeting multiple muscle groups in the upper body and can be a valuable addition to a strength training routine.
        """
    
    var body: some View {
        ZStack{
            LinearGradient(
                colors: [ColorPalette.backProfGratdientStart, ColorPalette.backProfGratdientEnd],
                startPoint: .top,
                endPoint: .bottom)
            .ignoresSafeArea(.all)
                
                    VStack{
//                        ProfileButtonComponent()
                        
                        VStack(alignment: .leading) {
                            ZStack {
                                CardBackgroundComponent()
                                
                                // The Content
                                ScrollView{
                                    VStack {
                                        Spacer()
                                            .frame(height: 20)
                                        
                                        HStack{
                                            NavigationLink(destination: RouterView(bmiCategory: .constant("underweight")) /* Your destination view */) {
                                                
                                                Image(systemName: "chevron.left")
                                                    .frame(width: 24, height: 24)
                                                    .foregroundColor(.white)
                                            }
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
                                                
//                                                AnimatedImage(name: "barbellBenchPress")
//                                                    .scaledToFit()
//                                                            .resizable()
//
//                                                            .aspectRatio(contentMode: .fit)
//                                                            .frame(width: 200, height: 200)
//                                                GifView("Barbell-Bench-Press")
//                                                GifView("barbellBenchPress")
                                                
                                                Image("BarbellBenchPressImage")
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fit)
                                                    .frame(width: 200, height: 200)
                                                
                                                NavigationLink(destination: WebView(request: URLRequest(url: youtubeURL)) /* Your destination view */) {
                                                    
                                                    Image(systemName: "play.rectangle.fill")
                                                        .foregroundColor(.red)
                                                        .font(.system(size: 40))
                                                }
                                            }
                                            .padding()
                                        }
                                        .padding(.horizontal)
                                        .offset(y: 10)
                                        
                                        ZStack{
                                            RoundedRectangle(cornerRadius: 20)
                                                .fill(ColorPalette.primary)
                                            
                                            VStack(alignment: .leading){
                                                Text("\(activity.excerciseName)")
                                                    .font(.system(size: 26, weight: .semibold))
                                                Spacer()
                                                    .frame(height: 10)
                                                Text(description)
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
                                                
                                                
//                                                // Step 1
//                                                Spacer()
//                                                    .frame(height: 15)
//                                                ZStack{
//                                                    RoundedRectangle(cornerRadius: 20)
//                                                        .fill(.white)
//
//                                                    VStack(alignment: .leading){
//                                                        Text("Set Up Properly: The first step in executing a proper bench press is to set up your equipment and body position. Make sure your bench is in a stable position, and your feet are firmly planted on the ground. Your back should be flat against the bench, and your shoulder blades should be retracted and squeezed together.")
//                                                            .font(.system(size: 13))
//                                                    }
//                                                    .padding(.top, 15)
//                                                    .padding(.bottom, 15)
//                                                    .padding(.leading, 40)
//                                                    .padding(.trailing, 15)
//
//                                                    // Step Number
//                                                    VStack(alignment: .leading){
//                                                        ZStack{
//                                                            Circle()
//                                                                .fill(ColorPalette.primary)
//                                                                .frame(width: 50)
//                                                            Text("1")
//                                                                .font(.system(size: 30))
//                                                        }
//                                                        Spacer()
//                                                    }
//                                                    .offset(x: -140, y: -15)
//                                                }
//
//                                                // Step 2
//                                                Spacer()
//                                                    .frame(height: 30)
//                                                ZStack{
//                                                    RoundedRectangle(cornerRadius: 20)
//                                                        .fill(.white)
//
//                                                    VStack(alignment: .leading){
//                                                        Text("Grip the Bar Correctly: Your grip on the bar is an essential aspect of your bench press technique. You should grip the bar with your palms facing away from your body, and your thumbs wrapped around the bar. Your grip should be shoulder-width apart or slightly wider.")
//                                                            .font(.system(size: 13))
//                                                    }
//                                                    .padding(.top, 15)
//                                                    .padding(.bottom, 15)
//                                                    .padding(.leading, 40)
//                                                    .padding(.trailing, 15)
//
//                                                    // Step Number
//                                                    VStack(alignment: .leading){
//                                                        ZStack{
//                                                            Circle()
//                                                                .fill(ColorPalette.primary)
//                                                                .frame(width: 50)
//                                                            Text("2")
//                                                                .font(.system(size: 30))
//                                                        }
//                                                        Spacer()
//                                                    }
//                                                    .offset(x: -140, y: -15)
//                                                }
//
//                                                // Step 3
//                                                Spacer()
//                                                    .frame(height: 30)
//                                                ZStack{
//                                                    RoundedRectangle(cornerRadius: 20)
//                                                        .fill(.white)
//
//                                                    VStack(alignment: .leading){
//                                                        Text("Engage Your Core: Before you start lifting, engage your core by taking a deep breath and bracing your abdominal muscles. This will help stabilize your spine and prevent any arching or bending during the lift.")
//                                                            .font(.system(size: 13))
//                                                    }
//                                                    .padding(.top, 15)
//                                                    .padding(.bottom, 15)
//                                                    .padding(.leading, 40)
//                                                    .padding(.trailing, 15)
//
//                                                    // Step Number
//                                                    VStack(alignment: .leading){
//                                                        ZStack{
//                                                            Circle()
//                                                                .fill(ColorPalette.primary)
//                                                                .frame(width: 50)
//                                                            Text("3")
//                                                                .font(.system(size: 30))
//                                                        }
//                                                        Spacer()
//                                                    }
//                                                    .offset(x: -140, y: -15)
//                                                }
                                                
                                                ForEach(Array(steps.enumerated()), id: \.element) { index, step in
//                                                ForEach(data: steps) {step in
                                                    Spacer()
                                                        .frame(height: 30)
                                                    ZStack{
                                                        RoundedRectangle(cornerRadius: 20)
                                                            .fill(.white)
                                                        
                                                        VStack(alignment: .leading){
                                                            Text(step)
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
                                                                Text("\(index+1)")
                                                                    .font(.system(size: 30))
                                                            }
                                                            Spacer()
                                                        }
                                                        .offset(x: -140, y: -15)
                                                    }
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
                        
//                        Spacer()
//                            .frame(height: 80)
                    }
                    .padding(.horizontal)
            
//            MainNavigationComponent()
        } // End Z Stack
    }
}

struct ExcerciseDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ExcerciseDetailView(activity: .constant(Activity.Struct(excerciseName: "Bench Press", set: 5, rep: "12, 10, 8, 6, 12", rest: "60")))
    }
}
