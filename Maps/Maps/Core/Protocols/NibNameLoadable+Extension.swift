//
//  NibNameLoadable+Extension.swift
//  Maps
//
//  Created by Анастасия Лосикова on 2/9/23.
//

import UIKit

protocol NibNameLoadable where Self: UIViewController { }

extension NibNameLoadable {
    static var nibName: String? {
        NSStringFromClass(self).components(separatedBy: ".").last
    }
}
