//
//  ContactInfo.swift
//  ContactsSwiftUI
//
//  Created by Михаил Зверьков on 02.03.2022.
//

import SwiftUI

struct ContactInfo: View {
    let contact: Person
    
    var body: some View {
        VStack {
            List {
                HStack {
                    Spacer()
                    Image(systemName: "person.fill")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .padding()
                    Spacer()
                }
                Label(contact.phoneNumber, systemImage: "phone")
                Label(contact.email, systemImage: "tray")
            }
            .navigationTitle(contact.fullName)
        }
        
    }
}

struct ContactInfo_Previews: PreviewProvider {
    static var previews: some View {
        ContactInfo(contact: Person.getContact())
    }
}
