//
//  Note.swift
//  Notes WatchKit Extension
//
//  Created by Lilian De Oliveira Silva on 01/06/22.
//

import Foundation

struct Note: Identifiable, Codable {
    let id: UUID
    let text: String
}
