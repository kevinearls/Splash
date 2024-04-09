//
//  User.swift
//  Splash
//
//  Created by Kevin Earls on 08/04/2024.
//

import Foundation

public struct User : Codable {
    public var id = UUID()
    public let name: String
    public let isAdmin: Bool

    init(name: String, isAdmin: Bool = false) {
        self.name = name
        self.isAdmin = isAdmin
    }
    // TODO image? how to store
}
