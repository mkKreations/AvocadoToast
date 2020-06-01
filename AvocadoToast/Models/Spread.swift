//
//  Spread.swift
//  AvocadoToast
//
//  Created by Marcus on 5/31/20.
//  Copyright © 2020 Marcus. All rights reserved.
//

import Foundation

// this enum will represent different
// spread options a user can choose for
// their order

// conformance to CaseIterable so we have
// access to .[allCases]

// conforms to Hashable so we can use instances
// of this type as the SelectionValue for Picker

// string raw values to provide the titles for
// each

// finally figured out how to conform to Identiable
// in a struct

// id needs to be unique but we do not want it to
// be unique each time we get a new instance of a Spread
// type because then we'll kill all reusabiity

// that's why it's best to return the rawValue because
// that value is unique for each case but will return the
// same value even when a new instance of this struct is
// copied (value types)

enum Spread: String, CaseIterable, Hashable, Identifiable {
	var id: String { rawValue } // conformance to Identifiable
	
	case almond_butter = "Almond Butter"
	case peanut_butter = "Peanut Butter"
	case honey = "Honey"
	case almou = "Almou"
	case tapenade = "Tapenade"
	case hummus = "Hummus"
	case vegemite = "Vegemite"
	case chutney = "Chutney"
}
