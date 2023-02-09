//
//  Logger+Extension.swift
//  Maps
//
//  Created by Анастасия Лосикова on 2/2/23.
//

import Foundation
import OSLog

extension Logger {
    private static var subsystem = Bundle.main.bundleIdentifier ?? ""

    // Logs the view cycles like viewDidLoad
    static let viewCycle = Logger(subsystem: subsystem, category: "viewCycle")
}
