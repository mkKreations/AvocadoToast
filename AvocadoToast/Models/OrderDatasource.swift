//
//  OrderDatasource.swift
//  AvocadoToast
//
//  Created by Marcus on 6/8/20.
//  Copyright © 2020 Marcus. All rights reserved.
//

import Foundation

// this datasource object will be the
// common object shared between all
// base level views of the app

// it will contain the data that I want
// to share between views that are not
// related

// conformance to ObservableObject so that
// any @Published properties will notify
// their view subscribers to update

class OrderDatasource: ObservableObject {
	@Published var completedOrders = CompletedOrder.sampleOrders
}
