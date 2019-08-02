//
//  NetworkingClient.swift
//  
//
//  Created by Danial Aqil on 2/8/19.
//

import Foundation
import Alamofire

class NetworkingClient {
    
    typealias WebServiceResponse = ([[String: Any]]?, Error?) -> Void
    func execute (_ url: URL, completion: @escaping WebServiceResponse) {
        Alamofire.Request(url, underlyingQueue: <#DispatchQueue#>).validate().responseJSON {response in
            if let error = response.error {
                completion(nil, error)
            } else if let jsonArray,
            
            
            
            
        }
    }
}
