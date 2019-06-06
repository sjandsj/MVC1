//
//  DataModel.swift
//  MVC_1.2
//
//  Created by mac on 06/06/19.
//  Copyright © 2019 gammastack. All rights reserved.
//

import Foundation
import UIKit

class DataModels {
    var names:String?
    var city:String?
    
    init(goodName:String, yourCity:String) {
        self.names = goodName
        self.city = yourCity
    }
    
}
