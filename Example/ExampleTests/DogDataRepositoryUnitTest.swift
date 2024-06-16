//
//  DogDataRepositoryUnitTest.swift
//  ExampleTests
//
//  Created by Manoj Chvan on 15/06/24.
//

import XCTest
import DogFetcher
@testable import Example


final class DogDataRepositoryUnitTest: XCTestCase {
    
    func test_GetDog_With_Existing_Id_Returns_LocalImage(){
        let repository = DogDataRepository()
        
        let expectation = self.expectation(description: "Returns_Valid_Local_Image_Url")
        Task{
            let image = try await repository.getDog(byIndex: 1)
            XCTAssertNotNil(image)
            expectation.fulfill()
            
        }
        waitForExpectations(timeout: 4, handler: nil)
    }
    
    func test_GetDog_With_New_Id_Returns_RemoteImage() {
        let repository = DogDataRepository()
        let num = Int.random(in: 0...1000)
        let expectation = self.expectation(description: "Returns_Valid_Remote_Image_Url")
        Task{
            let image = try await repository.getDog(byIndex: num)
            XCTAssertNotNil(image)
            expectation.fulfill()
        }
        waitForExpectations(timeout: 4, handler: nil)
    }
}
