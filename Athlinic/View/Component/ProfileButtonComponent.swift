//
//  ProfileButtonComponent.swift
//  Athlinic
//
//  Created by Rajif Afif on 05/05/23.
//

import SwiftUI

struct ProfileButtonComponent: View {
    @Binding var name: String
    
    var body: some View {
        HStack{
            Spacer()
            
            Text("\(name)")
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
}

struct ProfileButtonComponent_Previews: PreviewProvider {
    static var previews: some View {
        ProfileButtonComponent(name: .constant("DefaultNama"))
    }
}
