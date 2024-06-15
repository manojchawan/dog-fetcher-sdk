//
//  DogDataRepository.swift
//  Example
//
//  Created by Manoj Chvan on 14/06/24.
//

import Foundation
import CoreData
import DogFetcher


protocol DogRepository {
    func getDog(byIndex id: Int) async throws -> String?
}

struct DogDataRepository: DogRepository {
    private var dogFinder : DogFinder
    
    init(dogFinder: DogFinder = DogFinder()) {
        self.dogFinder = dogFinder
    }
    
    func getDog(byIndex id: Int) async throws -> String?{
        let result = getFromDb(byIndex: id)
        if let result = result{
            return result.imageUrl
        }else{
            do{
                let newDogImg = try await dogFinder.getImage()
                create(dogImg: newDogImg, id: id)
                return newDogImg
            }catch let err {
                throw err
            }
        }
    }
    
    private func create(dogImg: String?, id: Int) {
         let cdDog = DogData(context: PersistentStorage.shared.context)
         cdDog.id = Int64(id)
         cdDog.imageUrl = dogImg
         PersistentStorage.shared.saveContext()
     }
    
    private func getFromDb(byIndex id: Int) -> DogData? {
        let fetchRequest = NSFetchRequest<DogData>(entityName: "DogData")
        let predicate = NSPredicate(format: "id = %i", Int64(id))
        
        fetchRequest.predicate = predicate
        
        do {
            let result = try PersistentStorage.shared.context.fetch(fetchRequest).first
            return result
        } catch let error {
            debugPrint(error)
        }
        return nil
        
    }
    
    
}
