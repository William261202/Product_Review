//
//  InfoData.swift
//  Help!
//
//  Created by Thiha Yeyint Aung on 6/16/18.
//  Copyright © 2018 William. All rights reserved.
//

import Foundation
import RealmSwift

class CategoryModel: Object {
    var name: String = ""
    let Detail = List<DetailModel>()
}
