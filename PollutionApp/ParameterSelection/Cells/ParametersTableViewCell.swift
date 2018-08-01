//
//  ParametersTableViewCell.swift
//  PollutionApp
//
//  Created by Łukasz Drożdż on 01.08.2018.
//  Copyright © 2018 Łukasz Drożdż. All rights reserved.
//

import UIKit

class ParametersTableViewCell: UITableViewCell, Cellable {
    
    // MARK: Outlets
    @IBOutlet weak var parameterNameLabel: UILabel!
    
    // MARK: Properties
    static var CellIdentifier: String = "ParametersTableViewCell"
    
    var parameter: Sensor? {
        didSet {
            if let parameter = parameter {
                parameterNameLabel.text = parameter.param.paramName
            }
        }
    }
}
