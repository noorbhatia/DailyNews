//
//  Enums.swift
//  DailyNews
//
//  Created by noor on 15/09/23.
//

import UIKit


extension UIFont {
   /*
   enum SizeRange {
      case size16x14
      case size40x32
      case size32x25
      case size20x16
      
      var pointSize:CGFloat {
         switch self {
         case .size16x14: return UIScreen.getAdaptiveHeight(divisor: 56,
                                                            h844Divisor: 54.10,
                                                            h812Divisor: 53,
                                                            h736Divisor: 49.06,
                                                            h667Divisor: 47.64,
                                                            h568Divisor: 47.33)
         case .size20x16: return UIScreen.getAdaptiveHeight(divisor: 44.8,
                                                            h844Divisor: 44.42,
                                                            h812Divisor: 53,
                                                            h736Divisor: 40.88,
                                                            h667Divisor: 41.68,
                                                            h568Divisor: 40.57)
         case .size40x32: return UIScreen.getAdaptiveHeight(divisor: 22.4,
                                                            h736Divisor: 20.44,
                                                            h667Divisor: 20.84,
                                                            h568Divisor: 20.28)
         case .size32x25: return UIScreen.getAdaptiveHeight(divisor: 28,
                                                            h736Divisor: 27,
                                                            h667Divisor: 26.68,
                                                            h568Divisor: 25)
         }
      }
   }
   */
   
   convenience init?(font: UIFont) {
      self.init(name: font.fontName, size: font.pointSize)
   }
   convenience init(manropeFont: CustomFonts.Manrope, fontSize size: CGFloat) {
      self.init(name: manropeFont.rawValue, size: size)!
   }
   convenience init(manropeFont: CustomFonts.Manrope, forTextStyle style: UIFont.TextStyle, fontSize size: CGFloat) {
      let font = UIFont(manropeFont: manropeFont, fontSize: size)
      let scaledFont = font.dynamicallyTyped(withStyle: style)
      self.init(font: scaledFont)!
   }
   convenience init(manropeFont: CustomFonts.Manrope, forTextStyle style: UIFont.TextStyle, sizeRange range: UIFactory.SizeRange) {
      let font = UIFont(manropeFont: manropeFont, fontSize: range.size)
      let scaledFont = font.dynamicallyTyped(withStyle: style)
      self.init(font: scaledFont)!
   }
   convenience init(manropeFont: CustomFonts.Manrope, forTextStyle style: UIFont.TextStyle) {
      let size = Self.getDefaultSize(forTextStyle: style)
      let font = UIFont(name: manropeFont.rawValue, size: size)!
      let scaledFont = UIFontMetrics(forTextStyle: style).scaledFont(for: font)
      //      let scaledFontSize = scaledFont.pointSize
      self.init(font: scaledFont)!
      //      self.init(name: manropeFont.rawValue, size: scaledFontSize)!
   }
   
   struct CustomFonts {
      public enum Manrope:String {
         case bold = "Manrope-Bold"
         case extraBold = "Manrope-ExtraBold"
         case extraLight = "Manrope-ExtraLight"
         case light = "Manrope-Light"
         case medium = "Manrope-Medium"
         case regular = "Manrope-Regular"
         case semiBold = "Manrope-SemiBold"
         
         func font(ofFontSize size: CGFloat) -> UIFont {
            guard let font = UIFont(name: self.rawValue, size: size) else {
               fatalError("Fatal Error: Unable to find Font with name: \(self.rawValue)")
            }
            return font
         }
      }
   }
   class func manropeFont(name: CustomFonts.Manrope, forTextStyle style: UIFont.TextStyle) -> UIFont {
      let size = getDefaultSize(forTextStyle: style)
      let font = UIFont(name: name.rawValue, size: size)!
      let scaledFont = UIFontMetrics(forTextStyle: style).scaledFont(for: font)
      return scaledFont
   }
   static func getDefaultSize(forTextStyle style: UIFont.TextStyle) -> CGFloat {
      switch style {
      case .largeTitle: return 34
      case .title1: return 28
      case .title2: return 22
      case .title3: return 20
      case .headline: return 17
      case .body: return 17
      case .callout: return 16
      case .subheadline: return 15
      case .footnote: return 13
      case .caption1: return 12
      case .caption2: return 11
      default: fatalError()
      }
   }
   
   static func regular(withStyle style: UIFont.TextStyle, size fontSize: CGFloat) -> UIFont {
      let customFont = UIFont(manropeFont: .regular, fontSize: fontSize)
      return customFont.dynamicallyTyped(withStyle: style)
   }
   
   func dynamicallyTyped(withStyle style: UIFont.TextStyle) -> UIFont {
      let metrics = UIFontMetrics(forTextStyle: style)
      return metrics.scaledFont(for: self)
   }
}
