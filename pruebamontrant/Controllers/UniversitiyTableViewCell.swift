//
//  UniversitiesTableViewCell.swift
//  pruebamontrant
//
//  Created by Jonathan Macias on 12/10/21.
//

import UIKit

class UniversitiyTableViewCell: UITableViewCell {
    
    // MARK:- OULETS
    @IBOutlet weak var UniversityTitle: UILabel!
    @IBOutlet weak var UniversityWebpage: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
