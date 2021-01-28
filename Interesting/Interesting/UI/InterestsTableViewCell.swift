//
//  InterestsTableViewCell.swift
//  Interesting
//
//  Created by Michael Moore on 1/27/21.
//

import UIKit

class InterestsTableViewCell: UITableViewCell {
    static let reuseId = "\(InterestsTableViewCell.self)"
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(with interest: Interest) {
        titleLabel.text = interest.title
    }

}
