//
//  Serviece.swift
//  swagTableView-app
//
//  Created by shahin miraftabi on 4/28/18.
//  Copyright © 2018 com.example. All rights reserved.
//

import Foundation
class Service {
    
    //SingleTon
    
    static let instance = Service()
   private var  CategorisData  :[A_Category] = [
        A_Category(title: "Hats", imageName: "hats.png"),
        A_Category(title: "Shirts", imageName: "shirts.png"),
        A_Category(title: "Hoodies", imageName: "hoodies.png"),
        A_Category(title: "Digital", imageName: "digital.png")
    ]
    
    func getCategorisData () -> [A_Category]
    {
        return CategorisData
    }
    
    private init()
    {
        
    }
}
