//
//  Topping.swift
//  AvocadoToast
//
//  Created by Marcus on 5/31/20.
//  Copyright © 2020 Marcus. All rights reserved.
//

import Foundation

// this enum will represent a topping

// conformance to Identifiable so it
// can be used with ForEach

enum Topping: Identifiable {
	var id: Topping {
		return self
	}
	case salt
	case redPepperFlakes
	case eggs
}
