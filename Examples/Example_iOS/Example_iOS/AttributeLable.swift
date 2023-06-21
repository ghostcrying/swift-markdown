//
//  AttributeLable.swift
//  SwiftUI-Test
//
//  Created by 陈卓 on 2023/6/16.
//

import UIKit
import SwiftUI

struct AttributeLable: UIViewRepresentable {
    
    var text: NSAttributedString
    
    func makeUIView(context: Context) -> UILabel {
        let label = UILabel()
        label.numberOfLines = 0
        
        label.lineBreakMode = .byClipping
        label.textAlignment = .justified
        
        label.allowsDefaultTighteningForTruncation = true
        
        // Compression resistance is important to enable auto resizing of this view,
        // that base on the SwiftUI layout.
        // Especially when the SwiftUI frame modifier applied to this view.
        label.setContentCompressionResistancePriority(.defaultLow, for: .horizontal)
        label.setContentCompressionResistancePriority(.defaultLow, for: .vertical)
        return label
    }
    
    func updateUIView(_ label: UILabel, context: Context) {
        label.attributedText = text
    }
    
}
 
