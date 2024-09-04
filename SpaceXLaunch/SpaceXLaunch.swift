//
//  SpaceXLaunch.swift
//  SpaceXLaunch
//
//  Created by Saideep Reddy Talusani on 9/4/24.
//

import UIKit

class SpaceXLaunch: UITableViewCell {

    @IBOutlet weak var statusOfRocket: UILabel!
    @IBOutlet weak var rocketLaunchTime: UILabel!
    @IBOutlet weak var rocketDescription: UILabel!
    @IBOutlet weak var rocketNameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
