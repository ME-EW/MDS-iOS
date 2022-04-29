//
//  Font.swift
//  
//
//  Created by taehy.k on 2022/04/29.
//

import UIKit

public enum Fonts: String, CaseIterable {
    case spoqaHanSansNeoBold = "SpoqaHanSansNeo-Bold"
    case spoqaHanSansNeoMedium = "SpoqaHanSansNeo-Medium"
    case spoqaHanSansNeoRegular = "SpoqaHanSansNeo-Regular"
    case montserratRegular = "Montserrat-Regular"
    
    static var installed = false
}

public extension Fonts {
    static func install() {
        Fonts.installed = true
        for each in Fonts.allCases {
            if let cfURL = Bundle.module.url(forResource: each.rawValue, withExtension: "ttf") {
                CTFontManagerRegisterFontsForURL(cfURL as CFURL, .process, nil)
            } else {
                assertionFailure("Could not find font:\(each.rawValue) in bundle:\(Bundle.module)")
            }
        }
    }
}

public extension Fonts {
    func size(_ size : CGFloat) -> UIFont {
        if Fonts.installed == false {
            Fonts.install()
        }
        return UIFont(name: self.rawValue, size:  size)!
    }
}
