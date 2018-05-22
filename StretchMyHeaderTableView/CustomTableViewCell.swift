//
//  CustomTableViewCell.swift
//  StretchMyHeaderTableView
//
//  Created by ruijia lin on 5/22/18.
//  Copyright © 2018 ruijia lin. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    let category: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        //        label.text = "category"
        return label
    }()
    
    let headline: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        //        label.text = "Climate change protests, divestments meet fossil fuels realities"
        return label
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    func setupView(){
        addSubview(category)
        addSubview(headline)
        
        category.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
        category.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.5).isActive = true
        
        headline.topAnchor.constraint(equalTo: category.bottomAnchor).isActive = true
        headline.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
        headline.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.5).isActive = true
    }
}
