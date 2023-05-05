//
//  Activity+CoreDataProperties.swift
//  Athlinic
//
//  Created by Rajif Afif on 05/05/23.
//
//

import Foundation
import CoreData


extension Activity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Activity> {
        return NSFetchRequest<Activity>(entityName: "Activity")
    }

    @NSManaged public var is_done: Bool
    @NSManaged public var order: Int32
    @NSManaged public var rep: Int32
    @NSManaged public var rest: String?
    @NSManaged public var set: Int32
    @NSManaged public var excercises: NSSet?
//    @NSManaged public var schedule: Schedule?

}

// MARK: Generated accessors for excercises
extension Activity {

    @objc(addExcercisesObject:)
    @NSManaged public func addToExcercises(_ value: Excercise)

    @objc(removeExcercisesObject:)
    @NSManaged public func removeFromExcercises(_ value: Excercise)

    @objc(addExcercises:)
    @NSManaged public func addToExcercises(_ values: NSSet)

    @objc(removeExcercises:)
    @NSManaged public func removeFromExcercises(_ values: NSSet)

}

extension Activity : Identifiable {
    
}
