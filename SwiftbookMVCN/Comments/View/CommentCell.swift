//
//  CommentCell.swift
//  SwiftbookMVCN
//
//  Created by Valeriy Kovalevskiy on 2/11/20.
//  Copyright © 2020 v.kovalevskiy. All rights reserved.
//

import UIKit

class CommentCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var commentTextView: UITextView!
    
    func configureCell(with comment: Comment) {
        self.titleLabel.text = comment.name
        self.commentTextView.text = comment.body
    }
}
