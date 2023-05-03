//
//  ActivityCheckbox.swift
//  Athlinic
//
//  Created by Rajif Afif on 03/05/23.
//

import SwiftUI


struct ActivityCheckbox: View {
    @Binding var isChecked: Bool
    
    var body: some View {
        Button(action: {
            self.isChecked.toggle()
        }) {
            HStack {
                Image(systemName: isChecked ? "checkmark.square.fill" : "square")
                    .foregroundColor(isChecked ? .accentColor : .gray)
            }
        }
    }
}
