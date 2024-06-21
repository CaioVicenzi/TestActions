//
//  Item.swift
//  TestActions
//
//  Created by Caio Marques on 21/06/24.
//

import Foundation

struct Item {
    let id : UUID = UUID()
    var title : String
    var itemDescription : String
    let date : Date = Date()
}
