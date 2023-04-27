//
//  Exhibition.swift
//  Muzeum
//
//  Created by Natalia Wcislo on 27.04.23.
//

import Foundation


struct Exhibition: Identifiable{
    var id = UUID()
    let name: String
    let image: String
}

let exhibitions: [Exhibition] = [
    Exhibition(name: "Dinosaurs", image: "dinosaurs"),
    Exhibition(name: "digitize", image: "digitize"),
    Exhibition(name: "The World of Dinosaurs", image: "the_world_of_dinosaurs"),
    Exhibition(name: "System Earth", image: "system_earth"),
    Exhibition(name: "Evolution in Action", image: "evolution_in_action"),
    Exhibition(name: "The Cosmos and the Solar System", image: "the_cosmos_and_the_solar_system"),
    Exhibition(name: "Wet Collection", image: "wet_collection"),
]
