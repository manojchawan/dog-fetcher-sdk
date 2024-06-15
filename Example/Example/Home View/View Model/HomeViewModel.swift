//
//  HomeViewModel.swift
//  Example
//
//  Created by Manoj Chvan on 14/06/24.
//

import Foundation
import DogFetcher

protocol HomeVMProtocol {
    func getNextImage() async throws -> String?
    func getPrevImage() async throws -> String?
    func getImages(number: Int) async throws -> [String]?
    var index: Int {get}
}

final class HomeViewModel: HomeVMProtocol{
    
    private var dogFinder : DogFinder
    private let repository: DogDataRepository
    private(set) var index: Int
    
    init(dogFinder: DogFinder = DogFinder()) {
        self.dogFinder = dogFinder
        self.repository = DogDataRepository()
        index = 0
    }
    
    func getImages(number:Int) async throws -> [String]? {
        do{
            return try await dogFinder.getImages(number: number)
        }catch let serviceError {
            throw serviceError
        }
    }
    
     func getNextImage() async throws -> String?{
        index += 1
         do{
             return try await repository.getDog(byIndex: index)
         }catch let serviceError {
             throw serviceError
         }
    }
    
    func getPrevImage() async throws -> String?{
        index -= 1
        do{
            return try await repository.getDog(byIndex: index)
        }catch let serviceError {
            throw serviceError
        }
    }
    
}
