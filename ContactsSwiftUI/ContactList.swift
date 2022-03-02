//
//  ContactList.swift
//  ContactsSwiftUI
//
//  Created by Михаил Зверьков on 02.03.2022.
//

import SwiftUI

struct ContactList: View {
    let contacts: [Person]
    
    var body: some View {
        NavigationView {
            List(contacts) { contact in
                NavigationLink(
                    contact.fullName,
                    destination: ContactInfo(contact: contact)
                )
            }
            .navigationTitle("Contact List")
        }
    }
}

struct ContactList_Previews: PreviewProvider {
    static var previews: some View {
        ContactList(contacts: Person.getContactList())
    }
}
