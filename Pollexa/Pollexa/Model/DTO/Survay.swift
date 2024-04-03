//
//  Survay.swift
//  Pollexa
//
//  Created by Aleyna on 2.04.2024.
//

import Foundation
import UIKit


struct Survay: Codable {
    
    let title = ["Jane Doe","Mary Lou","Denny Cane"]
    let image = ["CampImage","NatureImage","rndPostImage","AutumnImage"]
    
    
    
    
    private enum CodingKeys: String, CodingKey {
        case title, image
    }
}
