//
//  CharacterTableViewCell.swift
//  APITest
//
//  Created by Admin on 12/18/18.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class CharacterTableViewCell: UITableViewCell {
    
    // MARK: - Outlets
    @IBOutlet weak var characterName: UILabel! 

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
