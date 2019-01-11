//
//  WebService.swift
//  GenericParseDemo
//
//  Created by Ujjwal's iMac on 1/11/19.
//  Copyright © 2019 Redeem. All rights reserved.
//

import Foundation
func fetchGenericData<T:Decodable>(urlString: String, completion: @escaping(T) -> ()){
    let url = URL(string: urlString)
    URLSession.shared.dataTask(with: url!){(data, resp, err) in
        if let err = err{
            print("Failed",err)
            return
        }
        
        guard let data = data else{return}
        
        do{
            let obj = try JSONDecoder().decode(T.self, from: data)
            completion(obj)
        }
        catch let jsonErr{
            print("Failed",jsonErr)
        }
        
        }.resume()
    
}
