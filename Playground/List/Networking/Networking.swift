//
//  Networking.swift
//  Playground
//
//  Created by user204215 on 8/29/21.
//

import Foundation
import Alamofire


class Networking{
    
    
    public static func getJSONResult<T: Decodable>(_ url: String, _ type: T.Type,
                                                   onCompleted:@escaping (T) -> Void,
                                                   onError:@escaping (String) -> Void){
        AF.request(url)
            .responseData(completionHandler: { (response) in
                print(response)
                switch response.result {
                case .failure(let error):
                    print(error)
                    onError(error.localizedDescription)
                case .success(let data):
                    do {
                        let pageData = try JSONDecoder().decode(type, from: data)
                        onCompleted(pageData)
                    } catch let error {
                        onError(error.localizedDescription)
                        print(error)
                    }
                }
            })
    }
}

