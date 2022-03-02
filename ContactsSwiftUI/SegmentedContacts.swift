//
//  SegmentedContacts.swift
//  ContactsSwiftUI
//
//  Created by Михаил Зверьков on 02.03.2022.
//

import SwiftUI

struct SegmentedContacts: View {
    let contacts: [Person]
    
    var body: some View {
        NavigationView {
            List(contacts) { contact in
                Section {
                    Label(contact.phoneNumber, systemImage: "phone")
                    Label(contact.email, systemImage: "tray")
                } header: {
                    Text(contact.fullName)
                        .font(.system(size: 19))
                }
                
            }
            .navigationTitle("Contact List")
            .frame(width: UIScreen.main.bounds.size.width + 50)
        }
    }
}

struct SegmentedContacts_Previews: PreviewProvider {
    static var previews: some View {
        SegmentedContacts(contacts: Person.getContactList())
    }
}
