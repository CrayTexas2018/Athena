//
//  RoundedButton.swift
//  Athena
//
//  Created by Cray Jaeger on 6/8/18.
//  Copyright © 2018 Cray Jaeger. All rights reserved.
//

import UIKit

class RoundedButton: UIButton {
    let btnColor = Colors.athenaPrimary
    let btnFontColor = Colors.athenaWhite
    let btnFont = Fonts.athenaPrimary(size:20)
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
//        self.layer.cornerRadius = self.frame.height / 2
        self.layer.cornerRadius = 10
        self.setTitleColor(btnFontColor, for: .normal)
        self.titleLabel?.font = btnFont
        self.backgroundColor = btnColor
    }
}
