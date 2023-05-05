//
//  Activity+CoreDataClass.swift
//  Athlinic
//
//  Created by Rajif Afif on 05/05/23.
//
//

import Foundation
import CoreData

@objc(Activity)
public class Activity: NSManagedObject {

    public struct Struct: Codable, Hashable, Identifiable {
        public var id = UUID()
        public var excerciseName: String
        public var set: Int
        public var rep: String
        public var rest: String
    }
}
