//
//  String+.swift
//  Yummie
//
//  Created by Quang Nguyen on 6/14/21.
//

import Foundation

extension String {
    var asUrl: URL? {
        return URL(string: self)
    }
}
