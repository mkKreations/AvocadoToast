//
//  Order.swift
//  AvocadoToast
//
//  Created by Marcus on 5/31/20.
//  Copyright © 2020 Marcus. All rights reserved.
//

import Foundation

// this struct will serve as the model

// a struct currently works well as the
// model object since we're not passing
// around the object in between views

struct Order {
	var includesSalt: Bool
	var includesRedPepperFlakes: Bool
	var quantity: Int
}

#if DEBUG
// sample data to pass to previews and to
// test local devices - only for DEBUG

extension Order {
	static let sampleOrder = Order(includesSalt: true,
																 includesRedPepperFlakes: false,
																 quantity: 1)
}
#endif
