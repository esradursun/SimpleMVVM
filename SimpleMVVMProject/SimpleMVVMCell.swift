//
//  SimpleMVVMCell.swift
//  SimpleMVVMProject
//
//  Created by Esra Dursun on 30/03/2020.
//  Copyright © 2020 Esra Dursun. All rights reserved.
//

import UIKit

class SimpleMVVMCell: UITableViewCell {
    
    var data : SimpleModel? {
        didSet{
            if let data = data {
                colorView.backgroundColor = data.color
                baseView.backgroundColor = data.color.withAlphaComponent(0.5)
                colorName.text = data.text
            }
        }
    }
    
    
    @IBOutlet private weak var colorView : UIView!
    @IBOutlet private weak var baseView : UIView!
    @IBOutlet private weak var colorName : UILabel!
    
    private func setupView() {
        colorView.layer.cornerRadius = 40
        colorView.layer.masksToBounds = true
        baseView.layer.cornerRadius = 40
        baseView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMinXMaxYCorner]
        
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
