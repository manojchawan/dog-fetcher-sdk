//
//  NetworkUtility.swift
//  DogFetcher
//
//  Created by Manoj Chvan on 13/06/24.
//

import Foundation

enum httpError: Error {
    case nonSuccessStatus
}


final class NetworkUtility{
    
    static let shared: NetworkUtility = NetworkUtility()
    private init() {}
    
    func getData<T: Decodable>(request: URLRequest, response: T.Type) async throws -> T{
        
        do {
            let (data, serverResponse) = try await URLSession.shared.data(for: request)
            
            guard let httpCode = (serverResponse as? HTTPURLResponse)?.statusCode,
                  (200...299).contains(httpCode) else {
                throw httpError.nonSuccessStatus
            }
            
            return try JSONDecoder().decode(response.self, from: data)
            
        } catch {
            throw error
        }
    }
}
