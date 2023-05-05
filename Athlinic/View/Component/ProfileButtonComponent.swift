//
//  ProfileButtonComponent.swift
//  Athlinic
//
//  Created by Rajif Afif on 05/05/23.
//

import SwiftUI
import CoreData

struct ProfileButtonComponent: View {
    @Environment(\.managedObjectContext) private var viewContext
    
    var body: some View {
        HStack{
            Spacer()
            
            Text("\(getName()!)")
                .foregroundColor(.white)
                .font(.system(size: 24))
            
            NavigationLink(destination: ProfileEditView()) {
                Image("menuIconProfile")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 40)
            }
            
        }
        .padding(.horizontal)
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
}

struct ProfileButtonComponent_Previews: PreviewProvider {
    static var previews: some View {
        ProfileButtonComponent()
    }
}
