//
//  DogFinderViewModel.swift
//  DogFetcher
//
//  Created by Manoj Chvan on 13/06/24.
//

import Foundation

protocol DogFinderProtocol {
    func getRandomDog() async throws -> String?
    func getMultipleDogs(number: Int) async throws -> [String]?
}

struct DogFinderViewModel: DogFinderProtocol{
    
    private var dogResource: DogResource
    
    init(dogResource: DogResource) {
        self.dogResource = dogResource
    }
    
    func getRandomDog() async throws -> String? {
        do{
            return try await dogResource.getSingleDog()?.message
        }catch let serviceError{
            throw serviceError
        }
    }
    
    func getMultipleDogs(number: Int) async throws -> [String]? {
        do{
            return try await dogResource.getMultipleDogs(number: number)?.message
        }catch let serviceError{
            throw serviceError
        }
    }
}
