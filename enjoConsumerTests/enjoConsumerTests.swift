//
//  enjoConsumerTests.swift
//  enjoConsumerTests
//
//  Created by Riadh Gharbi on 14/12/2023.
//

import XCTest
@testable import enjoConsumer

final class enjoConsumerTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        let remoteDataSource: AuthRemoteDataSource = AuthRemoteDataSource()
        
        remoteDataSource.fetchUserData { result in
            switch result {
            case .success(let userData):
                print(userData)
            case .failure(let error):
                print(error)
                fatalError(error.localizedDescription)
            }
        }
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
