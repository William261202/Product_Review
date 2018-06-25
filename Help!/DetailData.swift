//
//  DetailData.swift
//  Help!
//
//  Created by Thiha Yeyint Aung on 6/16/18.
//  Copyright © 2018 William. All rights reserved.
//

import Foundation
import RealmSwift

class DetailModel: Object {
    @objc dynamic var textView: String = ""
    var parentCategory = LinkingObjects(fromType: CategoryModel.self, property: "Detail")
}
