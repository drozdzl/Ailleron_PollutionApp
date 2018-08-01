//
//  AlamofireExtension.swift
//  PollutionApp
//
//  Created by Łukasz Drożdż on 30.07.2018.
//  Copyright © 2018 Łukasz Drożdż. All rights reserved.
//

import Foundation
import Alamofire
import Moya

extension MoyaProvider{
    @discardableResult
    func responseCodable<T: Decodable>(target: Target, type: T.Type, completion: @escaping ((T?,Error?) -> Void)) -> Cancellable? {
        
        return request(target, completion: { (response) in
            if response.value != nil {
                do {
                    #if DEBUG
                    if let json = String(data: response.value!.data, encoding: .utf8) {
                        print("Response\n:\(json)")
                    }
                    #endif
                    let decoder = JSONDecoder()
                    completion(try decoder.decode(type, from: response.value!.data), nil)
                } catch {
                    #if DEBUG
                    print((error as NSError).debugDescription)
                    #endif
                    
                    completion(nil, error)
                }
            }
        })
    }
}
