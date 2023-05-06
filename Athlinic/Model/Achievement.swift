//
//  Achievement.swift
//  Athlinic
//
//  Created by Mahatmaditya FRS on 06/05/23.
//

import Foundation

struct Achievement {
    let name: String
    let description: String
    let imageName: String
}

let achievements: [Achievement] = [
       Achievement(name: "Bronze Dumbbell", description: "You've completed 50x lift with dumbbell!", imageName: "bronze1"),
       Achievement(name: "Bronze Trophy", description: "You've completed 3 Day in a row", imageName: "bronze2"),
       Achievement(name: "Bronze GymBros", description: "You've completed 100x movement without tools", imageName: "bronze3"),
       Achievement(name: "Bronze Arm", description: "You've completed 3x arm day!", imageName: "bronze4"),
       Achievement(name: "Silver Dumbbell", description: "You've completed 200x lift with dumbbell!", imageName: "silver1"),
       Achievement(name: "Silver Trophy", description: "You've completed 7 Day in a row", imageName: "silver2"),
       Achievement(name: "Silver GymBros", description: "You've completed 500x movement without tools!", imageName: "silver3"),
       Achievement(name: "Silver Arm", description: "You've completed 10x arm day!", imageName: "silver4"),
       Achievement(name: "Gold Dumbbell", description: "You've completed 500x lift with dumbbell!", imageName: "gold1"),
       Achievement(name: "Gold Trophy", description: "You've completed all program", imageName: "gold2"),
       Achievement(name: "Gold GymBros", description: "You've completed 1000x movement without tools!", imageName: "gold3"),
       Achievement(name: "Gold Arm", description: "You've completed 30x arm day!", imageName: "gold4"),
   ]
