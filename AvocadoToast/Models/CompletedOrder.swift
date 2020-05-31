//
//  CompletedOrder.swift
//  AvocadoToast
//
//  Created by Marcus on 5/31/20.
//  Copyright © 2020 Marcus. All rights reserved.
//

import Foundation

// this model struct will represent
// a completed order

// conforms to Identifiable so we can
// iterate over it using ForEach

struct CompletedOrder: Identifiable {
	let id = UUID() // conformance to Identifiable
	
	var name: String
	var timePlaced: Date
	var includesSalt: Bool
	var includesRedPepperFlakes: Bool
}

#if DEBUG
// some sample data to work with

extension CompletedOrder {
	static let sampleOrders = [
		
		CompletedOrder(name: "Rye with Almond Butter",
									 timePlaced: Date(),
									 includesSalt: true,
									 includesRedPepperFlakes: false),
		
		CompletedOrder(name: "Multi-Grain with Hummus",
									 timePlaced: Date(),
									 includesSalt: false,
									 includesRedPepperFlakes: false),
		
		CompletedOrder(name: "Multi-Grain Toast",
									 timePlaced: Date(),
									 includesSalt: true,
									 includesRedPepperFlakes: false),
		
		CompletedOrder(name: "Sourdough with Chutney",
									 timePlaced: Date(),
									 includesSalt: true,
									 includesRedPepperFlakes: false),
		
		CompletedOrder(name: "Rye with Peanut Butter",
									 timePlaced: Date(),
									 includesSalt: true,
									 includesRedPepperFlakes: false),
		
		CompletedOrder(name: "Wheat with Tapenade",
									 timePlaced: Date(),
									 includesSalt: false,
									 includesRedPepperFlakes: false),
		
		CompletedOrder(name: "Sourdough with Vegemite",
									 timePlaced: Date(),
									 includesSalt: true,
									 includesRedPepperFlakes: false),
		
		CompletedOrder(name: "Wheat with Féroce",
									 timePlaced: Date(),
									 includesSalt: true,
									 includesRedPepperFlakes: false),
		
		CompletedOrder(name: "Rye with Honey",
									 timePlaced: Date(),
									 includesSalt: false,
									 includesRedPepperFlakes: false),
		
		CompletedOrder(name: "Multi-Grain Toast",
									 timePlaced: Date(),
									 includesSalt: true,
									 includesRedPepperFlakes: false),
		
		CompletedOrder(name: "Sourdough with Chutney",
									 timePlaced: Date(),
									 includesSalt: true,
									 includesRedPepperFlakes: false),
		
	]
}
#endif
