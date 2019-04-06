//
//  WeatherViewModelCell.swift
//  CityWeather
//
//  Created by Avinash Reddy on 4/5/19.
//  Copyright © 2019 Avinash Reddy. All rights reserved.
//

import Foundation
import UIKit

struct WeatherViewModelCell {
    let url: URL
    let day: String
    let description: String
    
    func loadImage(completion: @escaping (UIImage?) -> Void) {
        guard let imageData = try? Data(contentsOf: url) else {
            return
        }
        
        let image = UIImage(data: imageData)
        DispatchQueue.main.async {
            completion(image)
        }
    }
}
