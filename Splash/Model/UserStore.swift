//
//  UserStore.swift
//  Splash
//
//  Created by Kevin Earls on 08/04/2024.
//

import Foundation

public class UserStore: ObservableObject {
    @MainActor @Published public var users:[User] = []

    public init() {
        // FIXME is this really necessary?
    }

    @MainActor public func addUser(name: String, isAdmin: Bool = false) -> User {
        let newUser = User(name: name, isAdmin: isAdmin)
        users.append(newUser)
        return newUser
    }
}
