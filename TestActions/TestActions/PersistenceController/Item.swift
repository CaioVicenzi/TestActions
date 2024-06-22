//
//  Item.swift
//  TestActions
//
//  Created by Caio Marques on 21/06/24.
//

import Foundation

class Item {
    let id : UUID = UUID()
    var title : String
    var itemDescription : String
    let date : Date = Date()
    
    init(title: String, itemDescription: String) {
        self.title = title
        self.itemDescription = itemDescription
    }
}
