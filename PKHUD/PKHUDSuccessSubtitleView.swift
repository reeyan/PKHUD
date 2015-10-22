//
//  PKHUDSuccessSubtitleView.swift
//  PKHUD
//
//  Created by Reeyan Lee on 10/22/15.
//  Copyright © 2015 JNP LAB. All rights reserved.
//

import UIKit

public final class PKHUDSuccessSubtitleView: PKHUDSuccessView {
    public init(subtitle: String?) {
        super.init()
        subtitleLabel.text = subtitle;
        addSubview(subtitleLabel)
    }

    public required init() {
        super.init()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    public override func layoutSubviews() {
        super.layoutSubviews()
        
        let viewWidth = bounds.size.width
        let viewHeight = bounds.size.height
        
        let quarterHeight = CGFloat(ceilf(CFloat(viewHeight / 4.0)))
        let threeQuarterHeight = CGFloat(ceilf(CFloat(viewHeight / 4.0 * 3.0)))
        
        let opticalOffset: CGFloat = 10.0
        
        subtitleLabel.frame = CGRect(origin: CGPoint(x:0.0, y:threeQuarterHeight - opticalOffset), size: CGSize(width: viewWidth, height: quarterHeight))
    }
    
    public let subtitleLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .Center
        label.font = UIFont.boldSystemFontOfSize(17.0)
        label.textColor = UIColor.blackColor().colorWithAlphaComponent(0.85)
        label.adjustsFontSizeToFitWidth = true
        label.numberOfLines = 2
        return label
    }()
}