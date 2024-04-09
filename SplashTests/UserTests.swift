//
//  UserTests.swift
//  SplashTests
//
//  Created by Kevin Earls on 08/04/2024.
//

import XCTest
import Splash

final class UserTests: XCTestCase {
    var userStore = UserStore()

    override func setUpWithError() throws {
        userStore = UserStore()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    @MainActor func testExample() throws {
        let fred = userStore.addUser(name: "Fred", isAdmin: true)
        let barney = userStore.addUser(name: "Barney")
        let wilma = userStore.addUser(name: "Wilma")

        XCTAssertNotNil(fred)
        XCTAssertNotNil(barney)
        XCTAssertNotNil(wilma)

        XCTAssertTrue(fred.isAdmin)  // FIXME why is this optional?
        XCTAssertFalse(barney.isAdmin)
        XCTAssertFalse(wilma.isAdmin)

        XCTAssertEqual(3, userStore.users.count)

    }

//    func testPerformanceExample() throws {
//        // This is an example of a performance test case.
//        self.measure {
//            // Put the code you want to measure the time of here.
//        }
//    }

}
