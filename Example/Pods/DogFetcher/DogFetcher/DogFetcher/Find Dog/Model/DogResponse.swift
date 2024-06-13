//
//  DogResponse.swift
//  DogFetcher
//
//  Created by Manoj Chvan on 13/06/24.
//

import Foundation

struct DogResponse: Decodable{
    let message: String?
    let status : String?
}

struct MultipleDogs: Decodable{
    let message: [String]?
    let status : String?
}
