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
