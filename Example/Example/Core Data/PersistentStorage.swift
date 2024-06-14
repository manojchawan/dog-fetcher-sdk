//
//  PersistentStorage.swift
//  Example
//
//  Created by Manoj Chvan on 14/06/24.
//

import Foundation
import CoreData

final class PersistentStorage {
    static let shared = PersistentStorage()

    private init(){}

    lazy var persistentContainer: NSPersistentContainer = {

           let container = NSPersistentContainer(name: "Example")
           container.loadPersistentStores(completionHandler: { (storeDescription, error) in
               if let error = error as NSError? {

                   fatalError("Unresolved error \(error), \(error.userInfo)")
               }
           })
           return container
       }()
    
    lazy var context = persistentContainer.viewContext
    
    func saveContext() {
            if context.hasChanges {
                do {
                    try context.save()
                } catch {
                    let nserror = error as NSError
                    fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
                }
            }
        }
    
}

