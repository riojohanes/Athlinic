//
//  ProfileEditView.swift
//  Athlinic
//
//  Created by Mahatmaditya FRS on 04/05/23.
//

import SwiftUI
import CoreData

struct ProfileEditView: View {
    @Environment(\.managedObjectContext) private var viewContext
    
    @State private var isUpdatingProfile = true
    @State private var profHeight: String = ""
    @State private var profWeight: String = ""
    
    var body: some View {
        ZStack{
            LinearGradient(
                colors: [.black],
                startPoint: .top,
                endPoint: .bottom)
            .ignoresSafeArea(.all)
            
            ZStack{
                VStack{
                    HStack(alignment: .center){
                        Text("\(getName() ?? "Unkown")!")
                            .foregroundColor(.white)
                            .font(.system(size: 24, weight: .light))

                    }
                    .padding(.horizontal)
                    
                    Image("maleProfileDisplay")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
//                        .frame(width: 400)
                        .offset(y: 30)
//                    Spacer()
                }
                
                VStack{
                    Spacer()
                        .frame(height: 250)
                    ZStack(alignment: .leading) {
                        CardBackgroundComponent()
                        if isUpdatingProfile {
                            
                            VStack(alignment: .leading) {
                                Spacer()
                                VStack(alignment: .leading) {
                                    Text("GENDER")
                                        .font(.system(size: 21, weight: .medium))
                                        .foregroundColor(.white)
                                    Text("\(showGender())")
                                        .font(.system(size: 49, weight: .semibold))
                                        .foregroundColor(.white)
                                }
                                .offset(y: -10)
                                
                                Spacer()
                                VStack(alignment: .leading) {
                                    //                                Spacer()
                                    Text("WEIGHT / HEIGHT")
                                        .font(.system(size: 21, weight: .medium))
                                    //                                Spacer()
                                    Text(String(format: "%.2f", getWeight() ?? 2.0) + " / " + String(format: "%.2f", getHeight() ?? 1.0))

                                        .font(.system(size: 60, weight: .semibold))
                                    //                                Spacer()
                                }
                                .foregroundColor(.white)
                                if #available(iOS 15.0, *) {
                                    Button("UPDATE") {
                                        isUpdatingProfile.toggle()
                                    }
                                    .font(.system(size: 21, weight: .light))
                                    .frame(width: 120)
                                    .padding(.vertical, 5)
                                    .foregroundColor(.black)
                                    .background(ColorPalette.updateButton)
                                    .cornerRadius(16)
                                    .offset(y: -15)
                                    
                                } else {
                                    // Fallback on earlier versions
                                }
                            }
                            .padding()
                        }
                        else {
                            VStack(alignment: .leading){
                                HStack {
                                    if #available(iOS 15.0, *) {
                                        Button("DONE") {
                                            editMeasurement(height: profHeight, weight: profWeight)
                                            isUpdatingProfile.toggle()
                                        }
                                        .font(.system(size: 21, weight: .light))
                                        .frame(width: 90)
                                        .padding(.vertical, 3)
                                        .foregroundColor(.black)
                                        .background(ColorPalette.doneButton)
                                        .cornerRadius(16)
//                                        .offset(y: -15)
                                        
                                    } else {
                                        // Fallback on earlier versions
                                    }
                                    Spacer()
                                    Text("Update Profile")
                                        .foregroundColor(.white)
                                        .font(.system(size: 22, weight: .semibold))
                                    
                                }
                                .padding()
                                
                                VStack(alignment: .leading) {
                                    Text("WEIGHT")
                                        .foregroundColor(.white)
                                        .font(.system(size: 22, weight: .medium))
                                    
                                    TextField("Your Weight", text: $profWeight)
                                        .keyboardType(.decimalPad)
                                        .onAppear{
                                            profWeight = "\(getWeight()!)"
                                        }
                                        .foregroundColor(.white)
                                        .padding(12)
                                        .font(.system(size: 22, weight: .semibold))
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 10)
                                                .stroke(Color.white, lineWidth: 2)
                                        )
                                }
                                .padding(.horizontal)
                                
                                VStack(alignment: .leading) {
                                    Text("HEIGHT")
                                        .foregroundColor(.white)
                                        .font(.system(size: 22, weight: .medium))
                                    
                                    TextField("Your Height", text: $profHeight)
                                        .keyboardType(.decimalPad)
                                        .onAppear{
                                            profHeight = "\(getHeight()!)"
                                        }
                                        .foregroundColor(.white)
                                        .padding(12)
                                        .font(.system(size: 22, weight: .semibold))
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 10)
                                                .stroke(Color.white, lineWidth: 2)
                                        )
                                }
                                .padding()
                                
                            }
                        }
                        
                    }
                    .frame(height: 320)
                    .clipped()
                    
                }
                .padding(.horizontal, 20)
            }
            .navigationBarBackButtonHidden(true)
            //            } // End ScrollView
            
//            MainNavigationComponent()
        }
    }
    private func getName() -> String? {
        let fetchRequest =
            NSFetchRequest<NSFetchRequestResult>(entityName: "Profile")
        fetchRequest.fetchLimit = 1
        do {
            let result = try viewContext.fetch(fetchRequest)
            if let profile = result.first as? Profile {
                return profile.name
            }
        } catch let error as NSError {
            print("Could not fetch. \(error), \(error.userInfo)")
        }
        return nil
    }
    
    private func getGender() -> Bool? {
        let fetchRequest =
            NSFetchRequest<NSFetchRequestResult>(entityName: "Profile")
        fetchRequest.fetchLimit = 1
        do {
            let result = try viewContext.fetch(fetchRequest)
            if let profile = result.first as? Profile {
                return profile.gender
            }
        } catch let error as NSError {
            print("Could not fetch. \(error), \(error.userInfo)")
        }
        return nil
    }
    
    private func showGender() -> String {
        if getGender()! {
            return "Male"
        } else {
            return "Female"
        }
    }
    
    private func getHeight() -> Double? {
        let fetchRequest =
        NSFetchRequest<NSFetchRequestResult>(entityName: "Profile")
        fetchRequest.fetchLimit = 1
        do {
            let result = try viewContext.fetch(fetchRequest)
            if let profile = result.first as? Profile {
                return profile.current_height
            }
        } catch let error as NSError {
            print("Could not fetch. \(error), \(error.userInfo)")
        }
        return nil
    }
    
    private func editMeasurement(height: String, weight: String) {
        let fetchRequest: NSFetchRequest<Profile> = Profile.fetchRequest()
        fetchRequest.fetchLimit = 1
        let d_height = Double(height)
        let d_weight = Double(weight)
        do {
            let result = try viewContext.fetch(fetchRequest)
            if let profile = result.first {
                profile.current_height = d_height ?? profile.current_height
                profile.current_weight = d_weight ?? profile.current_weight
                try viewContext.save()
            }
        } catch let error as NSError {
            print("Could not fetch. \(error), \(error.userInfo)")
        }
    }
    
    private func getWeight() -> Double? {
        let fetchRequest =
        NSFetchRequest<NSFetchRequestResult>(entityName: "Profile")
        fetchRequest.fetchLimit = 1
        do {
            let result = try viewContext.fetch(fetchRequest)
            if let profile = result.first as? Profile {
                return profile.current_weight
            }
        } catch let error as NSError {
            print("Could not fetch. \(error), \(error.userInfo)")
        }
        return nil
    }
}

struct ProfileEditView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileEditView()
    }
}
