//
//  CatergoryRow.swift
//  Landmarks
//
//  Created by Élie BINGUE on 21/02/2022.
//

import SwiftUI

struct CatergoryRow: View {
	var categoryName: String
	var items: [Landmark]
	
    var body: some View {
		VStack(alignment: .leading) {
			Text(categoryName)
				.font(.headline)
				.padding(.leading, 15)
				.padding(.top, 5)
			
			ScrollView(.horizontal, showsIndicators: false) {
				HStack(alignment: .top, spacing: 0) {
					ForEach(items) { landmark in
						NavigationLink {
							LandmarkDetail(landmark: landmark)
						} label: {
							CategoryItem(landmark: landmark)
						}
						
					}
				}
			}
			.frame(height: 185)
		}
    }
}

struct CatergoryRow_Previews: PreviewProvider {
	static var landmarks = ModelData().landmarks
	
    static var previews: some View {
        CatergoryRow(
			categoryName: landmarks[0].category.rawValue,
			items: Array(landmarks.prefix(4))
		)
    }
}
