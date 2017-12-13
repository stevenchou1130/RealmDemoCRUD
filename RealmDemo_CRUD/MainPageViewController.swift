//
//  MainPageViewController.swift
//  RealmDemo_CRUD
//
//  Created by leo.chou on 2017/12/12.
//  Copyright © 2017年 leo.chou. All rights reserved.
//

import UIKit
import RealmSwift

class MainPageViewController: UIViewController {

    @IBOutlet weak var textfield: UITextField!
    let realmManager = RealmManager.shared

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func addOrder(_ sender: Any) {
        let newOrder = realmManager.createOrder(with: textfield.text!)
        realmManager.saveToRealm(with: newOrder)
        textfield.text = ""
    }

    @IBAction func getDataFromRealm(_ sender: Any) {
        realmManager.getDataFromRealm()
    }
}
