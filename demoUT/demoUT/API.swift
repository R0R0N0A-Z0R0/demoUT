//
//  API.swift
//  demoUT
//
//  Created by Nguyen Trung on 8/18/19.
//  Copyright © 2019 Nguyen Trung. All rights reserved.
//

import Foundation

class API {
    
    func requestAPI(url:String, completion:@escaping (Any)->()){
        if let url = URL(string: url){
            let session = URLSession.shared
            print("ddddd")
            session.dataTask(with: url, completionHandler: { (data, res, err) in
                if (data != nil){
                    do{
                        if let result:Dictionary<String,Any> = try JSONSerialization.jsonObject(with:
                            data!, options: .allowFragments) as? Dictionary<String,Any>{
                            print("eeeeeeee")
                            print(result)
                            completion(result)
                        }
                    }catch{}
                }
                
                
            }).resume()
            
        }
    }
    
}
