//
//  constants.swift
//  To Do
//
//  Created by Rudra Jikadra on 29/12/17.
//  Copyright © 2017 Rudra Jikadra. All rights reserved.
//

import Foundation

var todoList:[String]?

func saveData(todoList:[String]){
    
    UserDefaults.standard.set(todoList, forKey: "todoList")
    
}

func fetchData() -> [String]? {
    
    if let todo = UserDefaults.standard.array(forKey: "todoList") as? [String] {
        return todo
    } else {
        return nil
    }
    
}
