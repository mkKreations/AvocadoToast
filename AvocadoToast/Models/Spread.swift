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

enum Spread: String, CaseIterable, Hashable {
	case almond_butter = "Almond Butter"
	case peanut_butter = "Peanut Butter"
	case honey = "Honey"
	case almou = "Almou"
	case tapenade = "Tapenade"
	case hummus = "Hummus"
	case vegemite = "Vegemite"
	case chutney = "Chutney"
}
