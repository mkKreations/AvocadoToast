//
//  Order.swift
//  AvocadoToast
//
//  Created by Marcus on 5/31/20.
//  Copyright © 2020 Marcus. All rights reserved.
//

import Foundation
import CoreGraphics

// this struct will serve as the model
// for an order

// a struct currently works well as the
// model object since we're not passing
// around the object in between views
// so no need to maintain only one instance

struct Order {
	var includesSalt: Bool
	var includesRedPepperFlakes: Bool
	var includesEgg: Bool
	var quantity: Int
	var eggLocation: CGSize
	// our model enum types
	var bread: Bread
	var spread: Spread
	var avocado: Avocado
}

#if DEBUG
// sample data to pass to previews and to
// test local devices - only for DEBUG

extension Order {
	static let sampleOrder = Order(includesSalt: true,
																 includesRedPepperFlakes: false,
																 includesEgg: false,
																 quantity: 1,
																 eggLocation: .zero,
																 bread: .wheat,
																 spread: .chutney,
																 avocado: .mashed)
}
#endif
