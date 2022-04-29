//
//  MDSIcon.swift
//  
//
//  Created by taehy.k on 2022/04/29.
//

import UIKit

public enum MDSIcon {
    
    // MARK: - Character
    
    public static var taeyang1: UIImage { .load(name: "taeyang1") }
    public static var taeyang2: UIImage { .load(name: "taeyang2") }
    public static var taeyang3: UIImage { .load(name: "taeyang3") }
    public static var taeyang4: UIImage { .load(name: "taeyang4") }
    
    public static var baram1: UIImage { .load(name: "baram1") }
    public static var baram2: UIImage { .load(name: "baram2") }
    public static var baram3: UIImage { .load(name: "baram3") }
    public static var baram4: UIImage { .load(name: "baram4") }
    
    public static var haneul1: UIImage { .load(name: "haneul1") }
    public static var haneul2: UIImage { .load(name: "haneul2") }
    public static var haneul3: UIImage { .load(name: "haneul3") }
    public static var haneul4: UIImage { .load(name: "haneul4") }
    
    public static var kotnim1: UIImage { .load(name: "kotnim1") }
    public static var kotnim2: UIImage { .load(name: "kotnim2") }
    public static var kotnim3: UIImage { .load(name: "kotnim3") }
    public static var kotnim4: UIImage { .load(name: "kotnim4") }
    
    public static var jungjik1: UIImage { .load(name: "jungjik1") }
    public static var jungjik2: UIImage { .load(name: "jungjik2") }
    public static var jungjik3: UIImage { .load(name: "jungjik3") }
    public static var jungjik4: UIImage { .load(name: "jungjik4") }
    
    public static var maeum1: UIImage { .load(name: "maeum1") }
    public static var maeum2: UIImage { .load(name: "maeum2") }
    public static var maeum3: UIImage { .load(name: "maeum3") }
    public static var maeum4: UIImage { .load(name: "maeum4") }
    
    public static var banghyang1: UIImage { .load(name: "banghyang1") }
    public static var banghyang2: UIImage { .load(name: "banghyang2") }
    public static var banghyang3: UIImage { .load(name: "banghyang3") }
    public static var banghyang4: UIImage { .load(name: "banghyang4") }
    
    public static var gureum1: UIImage { .load(name: "gureum1") }
    public static var gureum2: UIImage { .load(name: "gureum2") }
    public static var gureum3: UIImage { .load(name: "gureum3") }
    public static var gureum4: UIImage { .load(name: "gureum4") }
    
    // MARK: - Icon
    
    public static var icnAlertRead: UIImage { .load(name: "icn_alert_read") }
    public static var icnAlertUnread: UIImage { .load(name: "icn_alert_unread") }
    public static var icnArchive: UIImage { .load(name: "icn_archive") }
    public static var icnBack: UIImage { .load(name: "icn_back") }
    public static var icnBadge: UIImage { .load(name: "icn_badge") }
    public static var icnClose: UIImage { .load(name: "icn_close") }
    public static var icnDown: UIImage { .load(name: "icn_down") }
    public static var icnMore: UIImage { .load(name: "icn_more") }
    public static var icnRefresh: UIImage { .load(name: "icn_refresh") }
    public static var icnSetting: UIImage { .load(name: "icn_setting") }
    
    // MARK: - Icon Check
    
    public static var icnCheckAble: UIImage { .load(name: "icn_check_able") }
    public static var icnCheckComplete: UIImage { .load(name: "icn_check_complete") }
    public static var icnCheckSelected: UIImage { .load(name: "icn_check_selected") }
    
    // MARK: - Icon Roundcheck
    
    public static var icnRoundcheckAble: UIImage { .load(name: "icn_roundcheck_able") }
    public static var icnRoundcheckSelected: UIImage { .load(name: "icn_roundcheck_selected") }
    
    // MARK: - Icon Tab
    
    public static var icnTabAlertActive: UIImage { .load(name: "icn_tab_alert_active") }
    public static var icnTabAlertInactive: UIImage { .load(name: "icn_tab_alert_inactive") }
    public static var icnTabArchiveActive: UIImage { .load(name: "icn_tab_archive_active") }
    public static var icnTabArchiveInactive: UIImage { .load(name: "icn_tab_archive_inactive") }
    public static var icnTabHomeActive: UIImage { .load(name: "icn_tab_home_active") }
    public static var icnTabHomeInactive: UIImage { .load(name: "icn_tab_home_inactive") }
}

extension UIImage {
    fileprivate static func load(name: String) -> UIImage {
        guard let image = UIImage(named: name, in: .module, compatibleWith: nil) else {
            assert(false, "\(name) 이미지 로드 실패")
            return UIImage()
        }
        return image
    }
    
    internal func resize(to length: CGFloat) -> UIImage {
        let newSize = CGSize(width: length, height: length)
        let image = UIGraphicsImageRenderer(size: newSize).image { _ in
            draw(in: CGRect(origin: .zero, size: newSize))
        }
        return image
    }
}
