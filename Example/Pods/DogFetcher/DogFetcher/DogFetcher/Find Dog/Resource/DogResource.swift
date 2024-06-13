//
//  DogResource.swift
//  DogFetcher
//
//  Created by Manoj Chvan on 13/06/24.
//

import Foundation

struct DogResource{
    
    func getSingleDog() async throws -> DogResponse? {
        var urlRequest = URLRequest(url: Service.randomDog)
        urlRequest.httpMethod = "get"
        
        do {
            return try await NetworkUtility.shared.getData(request: urlRequest, response: DogResponse.self)
        } catch {
            throw error
        }
    }
    
    func getMultipleDogs(number: Int) async throws -> MultipleDogs? {
        var urlRequest = URLRequest(url: Service.randomDog)
        urlRequest.url?.append(path: String(number))
        urlRequest.httpMethod = "get"
        
        do {
            return try await NetworkUtility.shared.getData(request: urlRequest, response: MultipleDogs.self)
        } catch {
            throw error
        }
    }
}
