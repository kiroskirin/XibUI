//
//  BaseUIViewProtocol.swift
//  XibUI
//
//  Created by Kraisorn Soisakhu on 26/11/2562 BE.
//  Copyright © 2562 Labs62. All rights reserved.
//

import UIKit

typealias BaseView = XibBaseViewProtocol
protocol XibBaseViewProtocol: class {
    var nibName: String { get }
    var contentView: UIView! { get set }
}

extension BaseView where Self: UIView {
    func loadNib(_ name: String) {
        Bundle.main.loadNibNamed(name, owner: self, options: nil)
    }

    func bindingView() {
        loadNib(nibName)

        contentView.frame = bounds
        contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]

        addSubview(contentView)
    }
}
