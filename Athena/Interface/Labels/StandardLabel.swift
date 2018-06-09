//
//  StandardLabel.swift
//  Athena
//
//  Created by Cray Jaeger on 6/9/18.
//  Copyright © 2018 Cray Jaeger. All rights reserved.
//

import UIKit

class StandardLabel: UILabel {
    let labelcolor = Colors.athenaWhite
    let labelFont = Fonts.athenaPrimary(size: 18.0)
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.font = labelFont
        self.textColor = labelcolor
    }
}
