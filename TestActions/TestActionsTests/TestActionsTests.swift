//
//  TestActionsTests.swift
//  TestActionsTests
//
//  Created by Caio Marques on 21/06/24.
//

import XCTest
@testable import TestActions

final class TestActionsTests: XCTestCase {
    private var itemCriado : Item!
    private var itemCriado2 : Item!
    private var controller : PersistenceController!
    
    override class func setUp() {
        let controller = PersistenceController()
        let itemCriado = Item(title: "Primeiro Item", itemDescription: "Descrição")
        let itemCriado2 = Item(title: "Segundo Item", itemDescription: "Descrição segundo item")
    }
    
    func testItemInsertion () {
        controller.addItem(item: itemCriado)
        let item = controller.fetchItems().first
        
        assert(item?.id == itemCriado.id)
    }
    
    func testItemExclusion () {
        controller.addItem(item: itemCriado)
        controller.addItem(item: itemCriado2)
        controller.excludeItem(itemCriado.id)
        let item = controller.fetchItems().first
        assert(item?.id == itemCriado2.id)
    }
    
    func testItemEdit () {
        //controller.addItem(item: item1)
        //controller.editarItem(index: 0, newTitle: "Novo título")
        //let item = controller.fetchItems().first
        //XCTAssertNotNil(item)
        //assert(item?.title == "Novo título")
    }
}
