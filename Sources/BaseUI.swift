//
//  BaseUI.swift
//  XibUI
//
//  Created by Kraisorn Soisakhu on 26/11/2562 BE.
//  Copyright © 2562 Labs62. All rights reserved.
//

import UIKit

typealias BaseUI = XibBaseUI
public class XibBaseUI: UIView, BaseView {
    @IBOutlet weak var contentView: UIView!

    public override init(frame: CGRect) {
        super.init(frame: frame)

        bindingView()
    }

    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

        bindingView()
    }

    public var nibName: String {
        return "\(self) must override `nibName` property"
    }
}
