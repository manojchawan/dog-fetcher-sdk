//
//  HomeViewModel.swift
//  Example
//
//  Created by Manoj Chvan on 14/06/24.
//

import Foundation
import DogFetcher

protocol HomeVMProtocol {
//    func getImage() async throws -> String?
    func getImages(number: Int) async throws -> [String]?
}

struct HomeViewModel: HomeVMProtocol{
    
    
    private var dogFinder : DogFinder
    
    init(dogFinder: DogFinder) {
        self.dogFinder = dogFinder
    }
    
    func getImages(number:Int) async throws -> [String]? {
        do{
            return try await dogFinder.getImages(number: number)
        }catch let serviceError {
            throw serviceError
        }
    }
    
//    func getImage() async throws -> String? {
//    }
    
}
