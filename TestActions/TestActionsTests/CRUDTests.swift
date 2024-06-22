//
//  CRUDTests.swift
//  TestActionsTests
//
//  Created by Caio Marques on 21/06/24.
//

import XCTest
@testable import TestActions

final class CRUDTests: XCTestCase {
    private var controller : PersistenceController!
    private var itemCriado : Item!
    private var itemCriado2 : Item!
    
    override func setUpWithError() throws {
        controller = PersistenceController()
        controller.clearList()
        itemCriado = Item(title: "Primeiro Item", itemDescription: "Descrição")
        itemCriado2 = Item(title: "Segundo Item", itemDescription: "Descrição segundo item")
    }
    
    func testItemInsertion () {
        controller.addItem(item: itemCriado)
        let item = controller.fetchItems().first
        
        assert(item?.title == itemCriado.title)
        XCTAssertNil(item)
    }
    
    func testItemExclusion () {
        controller.addItem(item: itemCriado)
        controller.addItem(item: itemCriado2)
        controller.excludeItem(itemCriado.id)
        let item = controller.fetchItems().first
        assert(item?.title == itemCriado2.title)
    }
    
    func testItemEdit () {
        controller.addItem(item: itemCriado)
        controller.editarItem(index: 0, newTitle: "Novo título")
        let item = controller.fetchItems().first
        XCTAssertNotNil(item)
        assert(item?.title == "Novo título")
    }

}
