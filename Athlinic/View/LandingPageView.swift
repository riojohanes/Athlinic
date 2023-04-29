//
//  landing page.swift
//  Athlinic
//
//  Created by Rio Johanes Sumolang on 19/04/23.
//

import SwiftUI
//import ColorExtension


struct Landing_Page_view: View {
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(
                    colors: [.black, CustomColor.topColor, CustomColor.botColor],
                    startPoint: .top,
                    endPoint: .bottom)
                .ignoresSafeArea(.all)
                
                VStack {
                    Image("logo")
                    //            Spacer()
                        .offset(y: -15)
                        .padding()
                    
                    ZStack{
                        
                        LinearGradient(gradient: Gradient(colors: [.clear, CustomColor.botColor,  CustomColor.botColor]), startPoint: .top, endPoint: .bottom)
                            .zIndex(1)
                            .offset(y: 270)
                        
                        Image("landingpage-human")
                            .resizable()
                            .scaledToFit()
                    }
                    .offset(y: -20)
                    
                    
                    VStack {
                        Text("Ready to build yet?")
                            .font(.system(size: 34, weight: .light))
                            .foregroundColor(.white)
                            .offset(y: -40)
                        Spacer()
//                        Button("CONTINUE") {
//
//                        }
//                        .font(.system(size: 24, weight: .semibold))
//                        .frame(width: 180, height: 52)
//                        .foregroundColor(.white)
//                        .background(LinearGradient(gradient: Gradient(colors: [.red, .yellow]), startPoint: .leading, endPoint: .trailing))
//                        .cornerRadius(30)
//                        .padding(.bottom, 20)
//                        .shadow(color: CustomColor.tintShadow, radius: 10, x: -3, y: -5)
//                        .shadow(color: .black, radius: 12, x: 3, y: 5)
                        NavigationLink(destination: ProfileNameScreen()) {
                            Text("CONTINUE")
                                .font(.system(size: 24, weight: .semibold))
                                .frame(width: 180, height: 52)
                                .foregroundColor(.white)
                                .background(LinearGradient(gradient: Gradient(colors: [.red, .yellow]), startPoint: .leading, endPoint: .trailing))
                                .cornerRadius(30)
//                                .padding(.bottom, 20)
                                .shadow(color: CustomColor.tintShadow, radius: 10, x: -3, y: -5)
                                .shadow(color: .black, radius: 12, x: 3, y: 5)
                        }

                    }
                    .padding(.bottom, 35)
                    .frame(height: 100)
                }
            }
            
                    }
        
    }
}

// Create custom color

struct CustomColor {
    static let topColor = Color("backgroundColor")
    static let botColor = Color("backgroundColorBot")
    static let tintShadow = Color("tintShadowButton")
    static let maleBorder = Color("maleBorder")
    static let femaleBorder = Color("femaleBorder")
    static let midGradient = Color("midGradient")
    static let botGradient = Color("botGradient")
    
    
    // Add more here...
}

// Remove backButton Text
extension UINavigationController {

  open override func viewWillLayoutSubviews() {
    super.viewWillLayoutSubviews()
    navigationBar.topItem?.backButtonDisplayMode = .minimal
  }

}


struct Landing_Page_View_Previews: PreviewProvider {
    static var previews: some View {
        Landing_Page_view()
    }
}

