//
//  ContentView.swift
//  ContactsSwiftUI
//
//  Created by Михаил Зверьков on 02.03.2022.
//

import SwiftUI

struct ContentView: View {
    private let contacts = Person.getContactList()
    var body: some View {
        TabView {
            ContactList(contacts: contacts)
                .tabItem {
                    Label("Contacts", systemImage: "person.3")
                }
            SegmentedContacts(contacts: contacts)
                .tabItem {
                    Label("Numbers", systemImage: "phone")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
