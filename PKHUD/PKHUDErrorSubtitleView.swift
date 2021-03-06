//
//  PKHUDErrorSubtitleView.swift
//  PKHUD
//
//  Created by Reeyan Lee on 10/22/15.
//  Copyright © 2015 JNP LAB. All rights reserved.
//

import UIKit

open class PKHUDErrorSubtitleView : PKHUDErrorView {
    public init(subtitle: String?) {
        super.init()
        subtitleLabel.text = subtitle;
        addSubview(subtitleLabel)
    }

    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    open override func layoutSubviews() {
        super.layoutSubviews()
        
        let viewWidth = bounds.size.width
        let viewHeight = bounds.size.height
        
        let quarterHeight = CGFloat(ceilf(CFloat(viewHeight / 4.0)))
        let threeQuarterHeight = CGFloat(ceilf(CFloat(viewHeight / 4.0 * 3.0)))
        
        let opticalOffset: CGFloat = 10.0
        
        subtitleLabel.frame = CGRect(origin: CGPoint(x:0.0, y:threeQuarterHeight - opticalOffset), size: CGSize(width: viewWidth, height: quarterHeight))
    }
    
    open let subtitleLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 17.0)
        label.textColor = UIColor.black.withAlphaComponent(0.85)
        label.adjustsFontSizeToFitWidth = true
        label.numberOfLines = 2
        return label
    }()
}
