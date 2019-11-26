//
//  CommentReviewWithAvatar.swift
//  XibUI
//
//  Created by Kraisorn Soisakhu on 26/11/2562 BE.
//  Copyright © 2562 Labs62. All rights reserved.
//

import UIKit

final class CommentReviewWithAvatar: BaseUI {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textLabel: UILabel!

    override var nibName: String {
        return "CommentReviewWithAvatar"
    }
}

extension CommentReviewWithAvatar {
    public func configure(_ image: String?, reviewerName: String?) {
        imageView.image = UIImage(named: image ?? "")
        textLabel.text = reviewerName
    }
}
