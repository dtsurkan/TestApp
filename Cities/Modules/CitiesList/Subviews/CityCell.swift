//
//  CityCell.swift
//  Cities
//
//  Created by Dima Tsurkan on 9/28/17.
//  Copyright © 2017 Dima Tsurkan. All rights reserved.
//

import UIKit

class CityCell: UITableViewCell {
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var countryCode: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func fill(city: Cities.FetchCities.ViewModel.DisplayedCity) {
        name.text = city.name.capitalized
        countryCode.text = city.countryCode.uppercased()
    }
    
}
