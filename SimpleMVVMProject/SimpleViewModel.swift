//
//  SimpleViewModel.swift
//  SimpleMVVMProject
//
//  Created by Esra Dursun on 30/03/2020.
//  Copyright © 2020 Esra Dursun. All rights reserved.
//

import Foundation

class SimpleViewModel {
    
    private var simpleModel : [SimpleModel]
    
    var count : Int {
        return simpleModel.count
    }
    
    init() {
        simpleModel = [
            SimpleModel(text: "Orange", color: #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)),
            SimpleModel(text: "blue", color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)),
            SimpleModel(text: "green", color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)),
            SimpleModel(text: "purple", color: #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1))
        ]
    }
    
    func getModelAt(_ index : Int) -> SimpleModel {
        return simpleModel[index]
    }
}
