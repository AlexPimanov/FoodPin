//
//  recipesTableViewController.swift
//  FoodPin
//
//  Created by Александр Пиманов on 19.03.2020.
//  Copyright © 2020 Александр Пиманов. All rights reserved.
//

import UIKit

class recipesTableViewController: UITableViewController {
    
var recipesNames = ["Макароны с колбасой и сыром в мультиварке", "Борщ", "Суп с фрикадельками", "Суп с домашней лапшой", "Жаркое с паровым картофелем", "Креветки под сыром", "Суп фасолевый", "Какая то рыба с сыром" , "Рисовая каша на молоке", "Брауни", "Пунш лимонный", "Каша ячневая", "Глинтвенй", "Омлет", "Креветки на гриле", "Шарлотка с яблоками", "Перец фарщированный", "Пирожки с картофелем"]
    
var recipesLocations = ["Hong Kong", "Hong Kong", "Hong Kong", "Hong Ko ng", "Hong Kong", "Hong Kong", "Hong Kong", "Sydney", "Sydney", "Sydney", "New York", "New York", "New York", "New York", "New York", "New York", "N ew York", "London", "London", "London", "London"]
    
var recipesTypes = ["Coffee & Tea Shop", "Cafe", "Tea House", "Austrian / Causual Drink", "French", "Bakery", "Bakery", "Chocolate", "Cafe", "American / Seafood", "American", "American", "Breakfast & Brunch", "Coffee & Tea", "Coffee & Tea", "Latin American", "Spanish", "Spanish", "Spanish", " British", "Thai"]

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "datacell"
         let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! RecipeTableViewCell
        // Configure the cell...
        cell.nameLabel.text = recipesNames[indexPath.row]
        cell.locationLabel.text = recipesTypes[indexPath.row]
        cell.typeLabel.text = recipesLocations[indexPath.row]
        cell.thumbnailImageView.image = UIImage(named: recipesImages[indexPath.row])
        return cell }
        
    var recipesImages = ["Макароны с колбасой и сыром в мультиварке", "Борщ", "Суп с фрикадельками", "Суп с домашней лапшой", "Жаркое с паровым картофелем", "Креветки под сыром", "Суп фасолевый", "Какая то рыба с сыром" , "Рисовая каша на молоке", "Брауни", "Пунш лимонный", "Каша ячневая", "Глинтвенй", "Омлет", "Креветки на гриле", "Шарлотка с яблоками", "Перец фарщированный", "Пирожки с картофелем"]
    
    
        
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return recipesNames.count
    }

}
