//
//  RMTests.swift
//  RMTests
//
//  Created by Zoufishan Mehdi on 3/25/23.
//

import XCTest
@testable import RM

class RMTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testCharacterListViewModelLoadsData() async throws {
        let vm = RMCharacterListViewModel()
        final class TestDelegate: RMCharacterListViewModelDelegate {
            func didLoadMoreCharacters(with count: [IndexPath]) {
            }
            
            func didSelectCharacter(_ character: RMCharacter) {
            }
            
            let expectation = XCTestExpectation(description: "loadInitialCharacters was called at least once")
            func didLoadInitialCharacters() {
                expectation.fulfill()
            }
        }
        let testDelegate = TestDelegate()
        vm.delegate = testDelegate
        
        vm.fetchCharacters()
        
        wait(for: [testDelegate.expectation], timeout: 5)
    }

}
