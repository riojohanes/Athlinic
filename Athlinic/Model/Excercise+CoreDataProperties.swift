//
//  Excercise+CoreDataProperties.swift
//  Athlinic
//
//  Created by Rajif Afif on 05/05/23.
//
//

import Foundation
import CoreData


extension Excercise {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Excercise> {
        return NSFetchRequest<Excercise>(entityName: "Excercise")
    }

    @NSManaged public var desc: String?
    @NSManaged public var how_to: String?
    @NSManaged public var name: String?
    @NSManaged public var steps: String?
    @NSManaged public var achievements: NSSet?
//    @NSManaged public var activity: Activity?
    @NSManaged public var histories: NSSet?

}

// MARK: Generated accessors for achievements
extension Excercise {

//    @objc(addAchievementsObject:)
//    @NSManaged public func addToAchievements(_ value: Achievement)
//
//    @objc(removeAchievementsObject:)
//    @NSManaged public func removeFromAchievements(_ value: Achievement)

    @objc(addAchievements:)
    @NSManaged public func addToAchievements(_ values: NSSet)

    @objc(removeAchievements:)
    @NSManaged public func removeFromAchievements(_ values: NSSet)

}

// MARK: Generated accessors for histories
extension Excercise {

//    @objc(addHistoriesObject:)
//    @NSManaged public func addToHistories(_ value: Activity_history)
//
//    @objc(removeHistoriesObject:)
//    @NSManaged public func removeFromHistories(_ value: Activity_history)

    @objc(addHistories:)
    @NSManaged public func addToHistories(_ values: NSSet)

    @objc(removeHistories:)
    @NSManaged public func removeFromHistories(_ values: NSSet)

}

extension Excercise : Identifiable {

}
