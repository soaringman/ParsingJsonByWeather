//
//  ApiManager.swift
//  ParsingJsonByWeather
//
//  Created by Алексей Гуляев on 25.06.2022.
//

import Foundation

enum ApiManager {
 static func getData(completion: @escaping (Weather) -> Void) {
 //create urlString
        let urlString = "https://goweather.herokuapp.com/weather/moscow"

        guard let url = URL(string: urlString) else { return }
        URLSession.shared.dataTask(with: url) { data, _, error in
            guard error == nil else { return }
            guard let data = data else { return }
            let decoder = JSONDecoder()
            
            do {
                    let responseObject = try decoder.decode(
                      Weather.self,
                      from: data
                    )
                    
                    completion(responseObject)
                  } catch let error {
                    print(String(describing: error.localizedDescription))
                  }

        }
        .resume()
    }
}
