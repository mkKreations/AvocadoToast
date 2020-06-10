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

// using String raw value for text
// representation

enum Topping: String, Identifiable {
	var id: Topping {
		return self
	}
	case salt = "Salt"
	case redPepperFlakes = "Red Pepper Flakes"
	case eggs = "Eggs"
}
