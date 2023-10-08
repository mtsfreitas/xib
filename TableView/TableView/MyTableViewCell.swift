//
//  MyTableViewCell.swift
//  TableView
//
//  Created by Matheus Freitas Martins on 07/10/23.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    
    @IBOutlet weak var customImageView: UIImageView!
    
    @IBOutlet weak var customLabel: UILabel!
    
    static let identifier = "MyTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "MyTableViewCell", bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
