//
//  HomeViewModelUnitTest.swift
//  ExampleTests
//
//  Created by Manoj Chvan on 15/06/24.
//

import XCTest
import DogFetcher
@testable import Example

final class HomeViewModelUnitTest: XCTestCase {

    func test_GetImages_Returns_Multiple_Images(){
        let viewModel = HomeViewModel()
        let expectation = self.expectation(description: "Returns_Valid_Remote_Image_Url_Array")
        Task{
            let images = try await viewModel.getImages(number: 5)
            XCTAssertNotNil(images)
            expectation.fulfill()
        }
        waitForExpectations(timeout: 4, handler: nil)
    }
    
    func test_Next_Image_Returns_Image(){
        let viewModel = HomeViewModel()
        let expectation = self.expectation(description: "Returns_Valid_Image_Url")
        Task{
            let image = try await viewModel.getNextImage()
            XCTAssertNotNil(image)
            expectation.fulfill()
        }
        waitForExpectations(timeout: 4, handler: nil)
    }
    
    func test_Previous_Image_Returns_Image(){
        let viewModel = HomeViewModel()
        let expectation = self.expectation(description: "Returns_Valid_Image_Url")
        Task{
            let image = try await viewModel.getPrevImage()
            XCTAssertNotNil(image)
            expectation.fulfill()
        }
        waitForExpectations(timeout: 4, handler: nil)
    }
}
