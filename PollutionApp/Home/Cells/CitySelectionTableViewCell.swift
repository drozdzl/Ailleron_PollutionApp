//
//  CitySelectionTableViewCell.swift
//  PollutionApp
//
//  Created by Łukasz Drożdż on 31.07.2018.
//  Copyright © 2018 Łukasz Drożdż. All rights reserved.
//

import UIKit

class CitySelectionTableViewCell: UITableViewCell, Cellable {
    
    // MARK: Outlets
    
    @IBOutlet weak var citylabel: UILabel!
    
    // MARK: Properties
    // Identifier needed to register cell
    static var CellIdentifier: String = "CitySelectionTableViewCell"
    
    var city: City? {
        didSet {
            if let city = city {
                citylabel.text = city.name
            }
        }
    }
}
