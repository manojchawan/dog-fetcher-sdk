//
//  DogData+CoreDataProperties.swift
//  Example
//
//  Created by Manoj Chvan on 14/06/24.
//
//

import Foundation
import CoreData


extension DogData {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<DogData> {
        return NSFetchRequest<DogData>(entityName: "DogData")
    }

    @NSManaged public var imageUrl: String?
    @NSManaged public var id: Int64
    
}

extension DogData : Identifiable {

}
