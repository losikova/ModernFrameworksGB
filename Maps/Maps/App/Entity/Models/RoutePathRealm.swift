//
//  RoutePathRealm.swift
//  Maps
//
//  Created by Анастасия Лосикова on 2/9/23.
//

import Foundation
import GoogleMaps
import RealmSwift

class RoutePathElementData: Object {
    var id = RealmOptional<Int>()
    var latitudes = List<Double>()
    var longitudes = List<Double>()

    override class func primaryKey() -> String? {
        "id"
    }

    init(latitudes: [Double], longitudes: [Double]) {
        super.init()
        latitudes.forEach { [weak self] in self?.latitudes.append($0) }
        longitudes.forEach { [weak self] in self?.longitudes.append($0) }
    }

    override required init() {
        super.init()
    }

}
