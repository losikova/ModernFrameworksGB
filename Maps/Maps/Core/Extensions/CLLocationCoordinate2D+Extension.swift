//
//  CLLocationCoordinate2D+Extension.swift
//  Maps
//
//  Created by Анастасия Лосикова on 2/2/23.
//

import Foundation
import GoogleMaps

extension CLLocationCoordinate2D: CustomStringConvertible {
    public var description: String {
        "(\nlatitude: \(latitude) \nlongitude: \(longitude)"
    }
}
