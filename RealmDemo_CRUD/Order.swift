//
//  Order.swift
//  RealmDemo_CRUD
//
//  Created by leo.chou on 2017/12/13.
//  Copyright © 2017年 leo.chou. All rights reserved.
//

import Foundation
import RealmSwift

class Order: Object {

    @objc dynamic var id = UUID().uuidString
    @objc dynamic var name = ""
    @objc dynamic var amount = 0
    @objc dynamic var createDate = Date()

    override static func primaryKey() -> String? {
        return "id"
    }
}
