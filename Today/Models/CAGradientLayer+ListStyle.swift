//
//  CAGradientLayer+ListStyle.swift
//  Today
//
//  Created by User on 10.07.2022.
//

import UIKit

extension CAGradientLayer {
    static func gradientLayer(for style: ReminderListStyle, in frame: CGRect) -> Self {
        let layer = Self()
        layer.colors = colors(for: style)
        layer.frame = frame
        return layer
    }
    
    private static func colors(for style: ReminderListStyle) -> [CGColor] {
        let beginColor: UIColor
        let endColor: UIColor
        
        switch style {
        case .today:
            beginColor = (.todayGradientTodayBegin ?? UIColor.clear)
            endColor = (.todayGradientTodayEnd ?? UIColor.clear)
        case .future:
            beginColor = (.todayGradientFutureBegin ?? UIColor.clear)
            endColor = (.todayGradientFutureEnd ?? UIColor.clear)
        case .all:
            beginColor = (.todayGradientAllBegin ?? UIColor.clear)
            endColor = (.todayGradientAllEnd ?? UIColor.clear)
        }
        return [beginColor.cgColor, endColor.cgColor]
    }
}
