//
//  APIService.swift
//  YoutubeApp
//
//  Created by Salma Hassan on 3/7/19.
//  Copyright © 2019 Salma Hassan. All rights reserved.
//

import Foundation

class APIService {
    
    let baseUrl = "https://s3-us-west-2.amazonaws.com/youtubeassets"
    static let shared = APIService()
    
    func getHomeFeed(completion : @escaping ([Video]) -> ()) {
        fetchData(urlString: "/home.json", completion: completion)
    }
    
    func getTrendingFeed(completion : @escaping ([Video]) -> ()) {
        fetchData(urlString: "/trending.json", completion: completion)
    }
    
    func getSubscriptionFeed(completion : @escaping ([Video]) -> ()) {
        fetchData(urlString: "/subscriptions.json", completion: completion)
    }
    
    func fetchData(urlString : String , completion : @escaping ([Video]) -> Void){
        guard let url = URL(string: "\(baseUrl)\(urlString)") else { return }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                print("error happened while getting data => \(error)")
                return
            }else {
                if let data = data {
                    do {
                        let jsonDecoder = JSONDecoder()
                        let videos = try jsonDecoder.decode([Video].self, from: data)
                        completion(videos)
                    }catch let decodingError{
                        print("Decoding error => \(decodingError.localizedDescription)")
                    }
                }
            }
        }.resume()
    }
}
