//
//  StationSelectionTableViewCell.swift
//  PollutionApp
//
//  Created by Łukasz Drożdż on 01.08.2018.
//  Copyright © 2018 Łukasz Drożdż. All rights reserved.
//

import UIKit

class StationSelectionTableViewCell: UITableViewCell, Cellable {

    @IBOutlet weak var stationNameLabel: UILabel!
    
    static var CellIdentifier: String = "StationSelectionTableViewCell"
    
    var station: Station? {
        didSet {
            if let station = station {
                stationNameLabel.text = station.stationName
            }
        }
    }

    
}
