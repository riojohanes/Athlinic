//
//  ProfileNameScreen.swift
//  Athlinic
//
//  Created by Mahatmaditya FRS on 27/04/23.
//

import SwiftUI
import CoreData

struct ProfileNameScreen: View {
    @Environment(\.managedObjectContext) private var viewContext
    
    @State private var name = ""
    @State private var showingAlert = false
    
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [.black, Color("backgroundColor"), Color("backgroundColorBot")],
                startPoint: .top,
                endPoint: .bottom)
            .ignoresSafeArea(.all)
            VStack {
                Text("How we should call you?")
                    .font(.system(size: 30, weight: .light))
                    .foregroundColor(.white)
                    .offset(y: -15)
                    .padding()
                
                
                ZStack{
                    
                    LinearGradient(gradient: Gradient(colors: [.clear, Color("backgroundColorBot"), Color("backgroundColorBot")]), startPoint: .top, endPoint: .bottom)
                        .zIndex(1)
                        .offset(y: 190)
                    
                    
                    Image("nameFigureSet")
                        .resizable()
                        .scaledToFit()
                }
                
                //                .background(.white)
                
                VStack {
                    //                    ZStack(alignment: .center) {
                    //                        if userName.isEmpty {
                    //                            Text("John")
                    //                                .foregroundColor(.gray.opacity(0.7))
                    //                                .font(.system(size: 30))
                    //                        };
                    //                        TextField("", text: $userName)
                    //                    }
                    //                    .foregroundColor(.white)
                    //                    .font(.system(size: 30, design: .default))
                    //                    .frame(width: 273)
                    //                    .padding(20)
                    //                    .background(Color.clear)
                    //                    .cornerRadius(19)
                    //                    .multilineTextAlignment(.center)
                    //                    .overlay(
                    //                        RoundedRectangle(cornerRadius: 19)
                    //                            .stroke(Color.white, lineWidth: 2)
                    //                    )
                    //                    .offset(y: -60)
                    
                    
                    TextField("Your Name", text: $name)
                        .foregroundColor(.white)
                        .font(.system(size: 30, design: .default))
                        .frame(width: 273)
                        .padding(20)
                        .background(Color.clear)
                        .cornerRadius(19)
                        .multilineTextAlignment(.center)
                        .overlay(
                            RoundedRectangle(cornerRadius: 19)
                                .stroke(Color.white, lineWidth: 2)
                        )
                        .offset(y: -85)
                    
                    NavigationLink(destination: ProfileGenderScreen()
                        .onAppear{self.addName(name:name)}
                    ) {
                        Text("NEXT")
                            .font(.system(size: 24, weight: .semibold))
                            .frame(width: 180, height: 52)
                            .foregroundColor(.white)
                            .background(LinearGradient(gradient: Gradient(colors: [.red, .yellow]), startPoint: .leading, endPoint: .trailing))
                            .cornerRadius(30)
                            .shadow(color: Color("tintShadowButton"), radius: 10, x: -3, y: -5)
                            .shadow(color: .black, radius: 12, x: 3, y: 5)
                    }
                    .navigationBarBackButtonHidden(true)
                    .alert(isPresented: $showingAlert) {
                        Alert(
                            title: Text("Username is required"),
                            message: Text("Please insert your name."),
                            dismissButton: .default(Text("OK"))
                        )
                    }
                    .onTapGesture {
                        if name.isEmpty {
                            showingAlert = true // menampilkan pesan jika userName kosong
                        }
                    }
                }
                
            }
        }
    }
    private func addName(name: String) {
        let newProfile = Profile(context: viewContext)
        newProfile.name = name
        do {
            try viewContext.save()
        } catch {
            let nsError = error as NSError
            fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
        }
    }
}

extension View {
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content) -> some View {
            
            ZStack(alignment: alignment) {
                placeholder().opacity(shouldShow ? 1 : 0)
                self
            }
        }
}

struct ProfileNameScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProfileNameScreen()
    }
}
