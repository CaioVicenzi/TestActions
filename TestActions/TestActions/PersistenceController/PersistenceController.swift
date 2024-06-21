//
//  PersistenceController.swift
//  TestActions
//
//  Created by Caio Marques on 21/06/24.
//

import Foundation

class PersistenceController {
    private static var itemList : [Item] = []
    
    func addItem (item : Item) {
        PersistenceController.itemList.append(item)
    }
    
    func excludeItem (_ id : UUID) {
        PersistenceController.itemList.removeAll { item in
            item.id == id
        }
    }
    
    func editarItem (index : Int, newTitle : String) {
        PersistenceController.itemList[index].title = newTitle
    }
    
    func fetchItems () -> [Item] {
        return PersistenceController.itemList
    }
}
