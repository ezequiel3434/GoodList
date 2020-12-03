//
//  Task.swift
//  GoodList
//
//  Created by Ezequiel Parada Beltran on 03/12/2020.
//

import Foundation

enum Priority: Int {
    case high
    case medium
    case low
}

struct Task {
    let title: String
    let priority: Priority
}
