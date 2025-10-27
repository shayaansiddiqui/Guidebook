//
//  Attraction.swift
//  Guidebook
//
//  Created by Shayaan Siddiqui on 10/27/25.
//

import Foundation

struct Attraction:Identifiable {
	var id = UUID()
	var name: String
	var summary: String
	var longDescription: String
	var imageName: String
	var latLong: String
}
