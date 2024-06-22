//
//  ContentView.swift
//  TestActions
//
//  Created by Caio Marques on 21/06/24.
//

import SwiftUI

struct ContentView: View {
    let list : [Item] = PersistenceController().fetchItems()
    
    var body: some View {
        VStack {
            Text("Lista de items")
            List {
                ForEach(list, id: \.id) {element in
                    Text(element.title)
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
