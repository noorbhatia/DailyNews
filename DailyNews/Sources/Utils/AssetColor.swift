//
//  AssetColors.swift
//  DailyNews
//
//  Created by noor on 13/09/23.
//

import UIKit

extension UIColor {
   enum AssetColor {
      case primaryBlack
      case grey
      case grey2
     
      var colorName: String {
         switch self {
         case .primaryBlack: return "Primary Dark"
         case .grey: return "Grey"
         case .grey2: return "Grey 2"
         
         }
      }
      
      var color: UIColor {
         guard let color = UIColor(named: colorName) else {
            fatalError("Color not found in Assets.xcassets for name: \(colorName)")
         }
         return color
      }
   }
   
   convenience init(assetColor: AssetColor) {
      let colorName = assetColor.colorName
      guard UIColor(named: colorName) != nil else {
         fatalError("Color not found in Assets.xcassets for name: \(colorName)")
      }
      self.init(named: colorName)!
   }
}
