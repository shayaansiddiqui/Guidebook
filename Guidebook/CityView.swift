	//
	//  ContentView.swift
	//  Guidebook
	//
	//  Created by Shayaan Siddiqui on 10/27/25.
	//

import SwiftUI

struct CityView: View {
	@State var cities = [City]()
	var dataService = DataService()
	
	var body: some View {
		NavigationStack {
			ScrollView {
				VStack {
					ForEach(cities) { city in
						NavigationLink(destination: {
							AttractionView(city: city)
						}, label: {
							CityCard(city: city)
						})
						
					}
				}
			}.padding(.horizontal)
		}
		.onAppear() {
			cities = dataService.getData()
		}
	}
}

#Preview {
	CityView()
}
