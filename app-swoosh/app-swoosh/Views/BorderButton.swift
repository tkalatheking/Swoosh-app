//
//  BorderButton.swift
//  app-swoosh
//
//  Created by Marco Tkalcic on 8/30/18.
//  Copyright © 2018 Marco Tkalcic. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor =
            UIColor.white.cgColor
    }

}
