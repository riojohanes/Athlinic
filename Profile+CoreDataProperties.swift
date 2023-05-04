//
//  Profile+CoreDataProperties.swift
//  Athlinic
//
//  Created by Rio Johanes Sumolang on 04/05/23.
//
//

import Foundation
import CoreData


extension Profile {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Profile> {
        return NSFetchRequest<Profile>(entityName: "Profile")
    }

    @NSManaged public var current_height: Double
    @NSManaged public var current_program: UUID?
    @NSManaged public var current_weight: Double
    @NSManaged public var dob: Date?
    @NSManaged public var gender: Bool
    @NSManaged public var name: String?

}

extension Profile : Identifiable {

}
