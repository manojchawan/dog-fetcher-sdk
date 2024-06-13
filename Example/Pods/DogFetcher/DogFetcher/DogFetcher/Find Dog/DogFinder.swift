//
//  DogFinder.swift
//  DogFetcher
//
//  Created by Manoj Chvan on 13/06/24.
//

import Foundation

public final class DogFinder {
    public init(){}
    
    public func getImage() async throws -> String? {
        do{
            let viewModel = DogFinderViewModel(dogResource: DogResource())
            return try await viewModel.getRandomDog()
        }catch let serviceError {
            throw serviceError
        }
    }
    
    public func getImages(number: Int) async throws -> [String]? {
        do{
            let viewModel = DogFinderViewModel(dogResource: DogResource())
            return try await viewModel.getMultipleDogs(number: number)
        }catch let serviceError {
            throw serviceError
        }
    }
}
