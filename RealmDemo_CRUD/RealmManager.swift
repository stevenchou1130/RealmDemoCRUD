//
//  RealmManager.swift
//  RealmDemo_CRUD
//
//  Created by leo.chou on 2017/12/13.
//  Copyright © 2017年 leo.chou. All rights reserved.
//

import Foundation
import RealmSwift

class RealmManager {

    static let shared = RealmManager()

    var orderNum = 0

    func createOrder(with amount: String) -> Order? {
        let newOrder = Order()

        newOrder.name = "New order \(orderNum)"

        guard
            let number = Int(amount)
            else {
                print("It's not a number")
                return nil
        }
        newOrder.amount = number * 100

        orderNum += 1

        return newOrder
    }
    // swiftlint:disable force_try
    func saveToRealm(with order: Order?) {
        if let newOrder = order {
            let realm = try! Realm()
            try! realm.write {
                realm.add(newOrder)
            }
        } else {
            print("Something is error")
        }
    }

    func getDataFromRealm() {
        let realm = try! Realm()
        let orders = realm.objects(Order.self)
        for result in orders {
            print("id: \(result.id)")
            print("name: \(result.name)")
            print("amount: \(result.amount)")
        }
    }
    // swiftlint:enable force_try
}
