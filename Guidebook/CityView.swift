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
		ScrollView {
			VStack {
				ForEach(cities) { city in
					Text(city.name)
						.font(Font.largeTitle)
				}
			}
		}
        .padding()
		.onAppear() {
			cities = dataService.getData()
		}
    }
}

#Preview {
    CityView()
}
