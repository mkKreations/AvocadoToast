//
//  CompletedOrder.swift
//  AvocadoToast
//
//  Created by Marcus on 5/31/20.
//  Copyright © 2020 Marcus. All rights reserved.
//

import Foundation
import CoreGraphics

// this model struct will represent
// a completed order

// conforms to Identifiable so we can
// iterate over it using ForEach

struct CompletedOrder: Identifiable {
	let id = UUID() // conformance to Identifiable
	
	var name: String
	var timePlaced: Date
	var eggLocation: CGSize
	var toppings: [Topping] = [] // using our Topping model
	// our model enum types
	var bread: Bread
	var spread: Spread
	var avocado: Avocado
}

#if DEBUG
// some sample data to work with

extension CompletedOrder {
	static let sampleOrders = [
		
		CompletedOrder(name: "Rye with Almond Butter",
									 timePlaced: Date(),
									 eggLocation: .zero,
									 toppings: [.salt, .redPepperFlakes],
									 bread: .sourdough,
									 spread: .hummus,
									 avocado: .mashed),
		
		CompletedOrder(name: "Multi-Grain with Hummus",
									 timePlaced: Date(),
									 eggLocation: .zero,
									 toppings: [.redPepperFlakes],
									 bread: .sourdough,
									 spread: .hummus,
									 avocado: .mashed),
		
		CompletedOrder(name: "Multi-Grain Toast",
									 timePlaced: Date(),
									 eggLocation: .zero,
									 toppings: [.salt],
									 bread: .sourdough,
									 spread: .hummus,
									 avocado: .mashed),
		
		CompletedOrder(name: "Sourdough with Chutney",
									 timePlaced: Date(),
									 eggLocation: .zero,
									 toppings: [.salt, .redPepperFlakes],
									 bread: .sourdough,
									 spread: .hummus,
									 avocado: .mashed),
		
		CompletedOrder(name: "Rye with Peanut Butter",
									 timePlaced: Date(),
									 eggLocation: .zero,
									 toppings: [.salt, .redPepperFlakes, .eggs],
									 bread: .sourdough,
									 spread: .hummus,
									 avocado: .mashed),
		
		CompletedOrder(name: "Wheat with Tapenade",
									 timePlaced: Date(),
									 eggLocation: .zero,
									 toppings: [.eggs],
									 bread: .sourdough,
									 spread: .hummus,
									 avocado: .mashed),

		CompletedOrder(name: "Sourdough with Vegemite",
									 timePlaced: Date(),
									 eggLocation: .zero,
									 toppings: [.salt],
									 bread: .sourdough,
									 spread: .hummus,
									 avocado: .mashed),

		CompletedOrder(name: "Wheat with Féroce",
									 timePlaced: Date(),
									 eggLocation: .zero,
									 toppings: [.salt, .redPepperFlakes, .eggs],
									 bread: .sourdough,
									 spread: .hummus,
									 avocado: .mashed),

		CompletedOrder(name: "Rye with Honey",
									 timePlaced: Date(),
									 eggLocation: .zero,
									 bread: .sourdough,
									 spread: .hummus,
									 avocado: .mashed),
		
		CompletedOrder(name: "Multi-Grain Toast",
									 timePlaced: Date(),
									 eggLocation: .zero,
									 toppings: [.salt, .eggs],
									 bread: .sourdough,
									 spread: .hummus,
									 avocado: .mashed),
		
		CompletedOrder(name: "Sourdough with Chutney",
									 timePlaced: Date(),
									 eggLocation: .zero,
									 bread: .sourdough,
									 spread: .hummus,
									 avocado: .mashed),
		
	]
}
#endif
