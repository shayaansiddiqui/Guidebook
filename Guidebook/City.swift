	//
	//  City.swift
	//  Guidebook
	//
	//  Created by Shayaan Siddiqui on 10/27/25.
	//

import Foundation

struct City:Identifiable, Decodable {
	let id = UUID()
	var name: String
	var summary: String
	var imageName: String
	
	var attractions: [Attraction]
}
