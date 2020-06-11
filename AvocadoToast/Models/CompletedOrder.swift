//
//  CompletedOrder.swift
//  AvocadoToast
//
//  Created by Marcus on 5/31/20.
//  Copyright © 2020 Marcus. All rights reserved.
//

import Foundation
import CoreGraphics

// this model class will represent
// a completed order

// was initially a struct but changed
// model to a class so we get both
// class and value equality functionality

// conforms to Identifiable so we can
// iterate over it using ForEach

class CompletedOrder: Identifiable {
	let id = UUID() // conformance to Identifiable
	
	var name: String
	var timePlaced: Date
	var eggLocation: CGSize
	var quantity: Int
	// our model enum types
	var toppings: [Topping]
	var bread: Bread
	var spread: Spread
	var avocado: Avocado
	
	init(
		name: String,
		timePlaced: Date,
		eggLocation: CGSize,
		quantity: Int,
		toppings: [Topping] = [],
		bread: Bread,
		spread: Spread,
		avocado: Avocado
	) {
		self.name = name
		self.timePlaced = timePlaced
		self.eggLocation = eggLocation
		self.quantity = quantity
		self.toppings = toppings
		self.bread = bread
		self.spread = spread
		self.avocado = avocado
	}
}

// conforms to Equatable so we get
// custom equality functionality

extension CompletedOrder: Equatable {
	static func == (lhs: CompletedOrder, rhs: CompletedOrder) -> Bool {
		// if my thinking is correct, then I do not want to
		// use .id when determining equality, as two different
		// references can have all other property values be
		// equal but their id's would be different because
		// they're two different references
		
		// that would lead to unpredictable behavior and many
		// a headache
		
		// in addition, we do not care to compare every property
		// value when determining equality between property values
		// of two different instances. instead, we only equate a
		// few of the property values to determine equality and
		// when we really need to identify equality, we depend on
		// reference equality ( === ), the beauty of using classes
			return
//				lhs.id == rhs.id &&
				lhs.name == rhs.name &&
//				lhs.timePlaced == rhs.timePlaced &&
//				lhs.eggLocation == rhs.eggLocation &&
//				lhs.quantity == rhs.quantity &&
				lhs.toppings == rhs.toppings &&
				lhs.bread == rhs.bread &&
				lhs.spread == rhs.spread &&
				lhs.avocado == rhs.avocado
	}
}

#if DEBUG
// some sample data to work with

extension CompletedOrder {
	static let sampleOrders = [
				
		CompletedOrder(name: "Rye with Almond Butter",
									 timePlaced: Date(timeIntervalSinceNow: -7237838),
									 eggLocation: .zero,
									 quantity: 1,
									 toppings: [.salt, .redPepperFlakes],
									 bread: .rye,
									 spread: .almond_butter,
									 avocado: .mashed),

		CompletedOrder(name: "Sourdough with Chutney",
									 timePlaced: Date(timeIntervalSinceNow: -5627838),
									 eggLocation: CGSize(width: -35, height: 55),
									 quantity: 1,
									 toppings: [.salt, .redPepperFlakes, .eggs],
									 bread: .sourdough,
									 spread: .chutney,
									 avocado: .sliced),

		CompletedOrder(name: "Multi-Grain with Hummus",
									 timePlaced: Date(timeIntervalSinceNow: -3692838),
									 eggLocation: .zero,
									 quantity: 2,
									 toppings: [.redPepperFlakes],
									 bread: .multi_grain,
									 spread: .hummus,
									 avocado: .mashed),
		
		CompletedOrder(name: "Rye with Almond Butter",
									 timePlaced: Date(timeIntervalSinceNow: -2937838),
									 eggLocation: .zero,
									 quantity: 1,
									 toppings: [.salt, .redPepperFlakes],
									 bread: .rye,
									 spread: .almond_butter,
									 avocado: .mashed),

		CompletedOrder(name: "White Toast with Almou",
									 timePlaced: Date(timeIntervalSinceNow: -2737838),
									 eggLocation: .zero,
									 quantity: 5,
									 toppings: [.salt],
									 bread: .white,
									 spread: .almou,
									 avocado: .sliced),
		
		CompletedOrder(name: "Sourdough with Chutney",
									 timePlaced: Date(timeIntervalSinceNow: -1627838),
									 eggLocation: CGSize(width: 35, height: -55),
									 quantity: 1,
									 toppings: [.salt, .redPepperFlakes, .eggs],
									 bread: .sourdough,
									 spread: .chutney,
									 avocado: .sliced),
		
	]
}
#endif
