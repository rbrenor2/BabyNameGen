//
//  ContentVM_Tests.swift
//  BabyNameGenTests
//
//  Created by Breno R R on 20/07/2024.
//

import XCTest
@testable import BabyNameGen

final class ContentViewModel_Tests: XCTestCase {
    
    let vm = ContentView.ViewModel(randomNameService: RandomNameMockService())

    override func setUpWithError() throws {
        vm.name = ""
        vm.isLoading = false
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_ContentViewModel_name_ShoulBeDefaultEmptyString() throws {
        XCTAssertEqual(vm.name, "")
    }
    
    func test_ContentViewModel_name_ShouldNotBeEmptyAfterGetRandomNameForIsCalled() async throws {
        let femaleName = await vm.randomNameService.getRandomNameFor(.FEMALE)
        let maleName = await vm.randomNameService.getRandomNameFor(.MALE)

        XCTAssertNotEqual(femaleName, "")
        XCTAssertNotEqual(maleName, "")
    }
    
    // getRandomNameFor_ShoulCallRandomService
    
    // getRandomNameFor_ShouldSetIsLoadingTrue

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
}
