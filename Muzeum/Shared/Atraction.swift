//
//  Atraction.swift
//  Muzeum
//
//  Created by Natalia Wcislo on 27.04.23.
//

import Foundation

struct Event: Identifiable{
    var id = UUID()
    let name: String
    let image: String
}

let events: [Event] = [
    Event(name: "Research A", image: "F1"),
    Event(name: "Research B", image: "F2"),
    Event(name: "Research C", image: "F3"),
    Event(name: "Research C", image: "F4"),
]

//struct Future: Identifiable{
//    var id = UUID()
//    let name: String
//    let image: String
//}
//
//let futures: [Future] = [
//    Future(name: "Research A", image: "F1"),
//    Future(name: "Research B", image: "F2"),
//    Future(name: "Research C", image: "F3"),
//    Future(name: "Research C", image: "F4"),
//]
