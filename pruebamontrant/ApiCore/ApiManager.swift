//
//  ApiManager.swift
//  pruebamontrant
//
//  Created by Jonathan Macias on 12/10/21.
//

import Foundation
import Alamofire

class ApiManager {
    static let API_URL = HttpConfig.API_URL
    class func GetUniversities(completion: @escaping ([Universities]?, AFError?) -> Void) {
        AF.request(self.API_URL, method: .get, headers: nil).responseDecodable { (response: DataResponse<[Universities], AFError>) in
                guard let responseHttp = response.response else {
                    return
                }
                switch responseHttp.statusCode {
                    case 200:
                        completion(response.value, nil)
                    case 404:
                        completion(nil, response.error)
                    default:
                        break
                }
        }
    }
}
