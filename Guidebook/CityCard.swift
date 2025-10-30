//
//  CityCard.swift
//  Guidebook
//
//  Created by Shayaan Siddiqui on 10/27/25.
//

import SwiftUI

struct CityCard: View {
	var city: City
    var body: some View {
		ZStack {
//			Image(city.imageName)
//				.resizable()
//				.aspectRatio(contentMode: .fill)
//				.cornerRadius(15)
			Rectangle()
				.background(content: {
					Image(city.imageName)
						.resizable()
						.aspectRatio(contentMode: .fill)
				})
				.foregroundColor(.clear)
				.opacity(1.0)
				.cornerRadius(15)
			Rectangle()
				.foregroundColor(.black)
				.opacity(0.5)
				.cornerRadius(15)
			VStack(alignment: .leading) {
				Text(city.name)
					.font(.largeTitle)
					.bold()
				Spacer()
				Text(city.summary)
					.multilineTextAlignment(.leading)
			}
			.padding()
			.foregroundColor(.white)
		}
		.frame(height: 400)
    }
}

#Preview {
	CityCard(city: City(name: "Tokyo",
						summary: "Tokyo serves as Japan's economic center and is the seat of both the Japanese government and the Emperor of Japan. Tokyo.",
						imageName: "tokyo",
						attractions: [Attraction]()))
}
