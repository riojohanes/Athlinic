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
    
    public var dummyData = [
        Activity.Struct(excerciseName: "Bench Press", set: 5, rep: "12, 10, 8, 6, 12", rest: "60"),
        Activity.Struct(excerciseName: "Incline Dumble Press", set: 4, rep: "12, 10, 8, 6", rest: "45-60"),
        Activity.Struct(excerciseName: "Decline Barbell Bench Press", set: 5, rep: "10, 10, 10, 10", rest: "45-60")
    ]
}
