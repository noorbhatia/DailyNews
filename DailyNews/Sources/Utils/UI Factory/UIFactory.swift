//
//  UIFactory.swift
//  DailyNews
//
//  Created by noor on 15/09/23.
//


import UIKit

final class UIFactory {
   static let shared = UIFactory()
   
   private init() {}
   
   struct SizeFactory {
      static let size40x32:CGFloat = SizeRange.size40x32.size
      static let size32x25:CGFloat = SizeRange.size32x25.size
      static let size20x16:CGFloat = SizeRange.size20x16.size
      static let size20x14:CGFloat = SizeRange.size20x14.size
      static let size16x14:CGFloat = SizeRange.size16x14.size
      static let size55x50:CGFloat = SizeRange.size55x50.size
      static let size25x20:CGFloat = SizeRange.size25x20.size
      static let size60x50:CGFloat = SizeRange.size60x50.size
      static let size50x40:CGFloat = SizeRange.size50x40.size
      static let size56x40:CGFloat = SizeRange.size56x40.size
      static let size16x12:CGFloat = SizeRange.size16x12.size
      static let size40x20:CGFloat = SizeRange.size40x20.size
      static let size55x33:CGFloat = SizeRange.size55x33.size
      static let size46x30:CGFloat = SizeRange.size46x30.size
      static let size38x32:CGFloat = SizeRange.size38x32.size
      static let size38x12:CGFloat = SizeRange.size38x12.size
      static let size12x8:CGFloat = SizeRange.size12x8.size
      static let size36x20:CGFloat = SizeRange.size36x20.size
      static let size450x380:CGFloat = SizeRange.size450x380.size
      static let size13x10:CGFloat = SizeRange.size13x10.size
      static let size100x80:CGFloat = SizeRange.size100x80.size
   }
   
   struct FontFactory {
      static let headingFont:UIFont = UIFont(manropeFont: .extraBold, forTextStyle: .largeTitle, sizeRange: .size40x32)
      
      static let titleFont:UIFont = UIFont(manropeFont: .extraBold, forTextStyle: .largeTitle, sizeRange: .size32x25)
      
      static let titleRegularFont:UIFont = UIFont(manropeFont: .regular, forTextStyle: .largeTitle, sizeRange: .size32x25)
      
      static let textFieldTitleFont:UIFont = UIFont(manropeFont: .semiBold, forTextStyle: .largeTitle, sizeRange: .size32x25)
      
      static let subheadingFont:UIFont = UIFont(manropeFont: .regular, forTextStyle: .title3, sizeRange: .size20x16)
      
      static let subheadingSemiBoldFont:UIFont = UIFont(manropeFont: .semiBold, forTextStyle: .title3, sizeRange: .size20x16)
      
      static let subtitleFont:UIFont = UIFont(manropeFont: .regular, forTextStyle: .subheadline, sizeRange: .size16x14)
      
      static let buttonFont:UIFont = UIFont(manropeFont: .semiBold, forTextStyle: .subheadline, sizeRange: .size16x14)
      
      static let cellTitleFont:UIFont = UIFont(manropeFont: .semiBold, forTextStyle: .title2, sizeRange: .size25x20)
      
      static let captionFont:UIFont = UIFont(manropeFont: .regular, forTextStyle: .caption2, sizeRange: .size13x10)
   }
   
   

   
   enum SizeRange {
      case size16x14
      case size40x32
      case size32x25
      case size20x16
      case size20x14
      case size55x50
      case size25x20
      case size16x12
      case size40x20
      case size46x30
      case size60x50
      case size55x33
      case size38x32
      case size38x12
      case size36x20
      case size12x8
      case size450x380
      case size50x40
      case size56x40
      case size13x10
      case size100x80
      
      var size:CGFloat {
         switch self {
         case .size16x14: return UIScreen.getAdaptiveHeight(divisor: 56,
                                                            h844Divisor: 54.10,
                                                            h812Divisor: 53,
                                                            h736Divisor: 49.06,
                                                            h667Divisor: 47.64,
                                                            h568Divisor: 47.33)
         case .size16x12: return UIScreen.getAdaptiveHeight(divisor: 56,
                                                            h667Divisor: 55.58,
                                                            h568Divisor: 56.8)
         case .size20x16: return UIScreen.getAdaptiveHeight(divisor: 44.8,
                                                            h844Divisor: 44.42,
                                                            h812Divisor: 53,
                                                            h736Divisor: 40.88,
                                                            h667Divisor: 41.68,
                                                            h568Divisor: 40.57)
         case .size20x14: return UIScreen.getAdaptiveHeight(divisor: 44.8)
         case .size40x32: return UIScreen.getAdaptiveHeight(divisor: 22.4,
                                                            h736Divisor: 20.44,
                                                            h667Divisor: 20.84,
                                                            h568Divisor: 20.28)
         case .size40x20: return UIScreen.getAdaptiveHeight(divisor: 22.4,
                                                            h736Divisor: 24.53,
                                                            h667Divisor: 33.35,
                                                            h568Divisor: 35.5)
         case .size32x25: return UIScreen.getAdaptiveHeight(divisor: 28,
                                                            h736Divisor: 27,
                                                            h667Divisor: 26.68,
                                                            h568Divisor: 25)
            
         case .size46x30: return UIScreen.getAdaptiveHeight(divisor: 19.478)
            
         case .size55x50: return UIScreen.getAdaptiveHeight(divisor: 16.290,
                                                            h844Divisor: 15.629,
                                                            h812Divisor: 15.320,
                                                            h736Divisor: 14.153,
                                                            h667Divisor: 13.34,
                                                            h568Divisor: 11.83)
            
         case .size25x20: return UIScreen.getAdaptiveHeight(divisor: 35.84,
                                                            h844Divisor: 35.16,
                                                            h812Divisor: 33.83,
                                                            h736Divisor: 33.45,
                                                            h667Divisor: 33.35,
                                                            h568Divisor: 31.55)
            
         case .size60x50: return  UIScreen.getAdaptiveHeight(divisor: 14.93,
                                                             h844Divisor: 14.55,
                                                             h812Divisor: 14.5,
                                                             h736Divisor: 13.6,
                                                             h667Divisor: 13.14,
                                                             h568Divisor: 13.14)
            
         case .size55x33: return  UIScreen.getAdaptiveHeight(divisor: 16.29,
                                                             h844Divisor: 16.88,
                                                             h812Divisor: 17.65,
                                                             h736Divisor: 18.4,
                                                             h667Divisor: 20.21,
                                                             h568Divisor: 18.93)
            
         case .size38x32: return UIScreen.getAdaptiveHeight(divisor: 23.578,
                                                            h844Divisor: 22.810,
                                                            h812Divisor: 22.555,
                                                            h736Divisor: 21.647,
                                                            h667Divisor: 20.843,
                                                            h568Divisor: 18.933)
            
         case .size38x12: return UIScreen.getAdaptiveHeight(divisor: 23.578,
                                                            h844Divisor: 24.823,
                                                            h812Divisor: 27.066,
                                                            h736Divisor: 30.666,
                                                            h667Divisor: 55.583,
                                                            h568Divisor: 18.933)
            
         case .size36x20: return UIScreen.getAdaptiveHeight(divisor: 24.888) // The lower bound is left to ~26 only. Can change if needed
            
         case .size12x8: return UIScreen.getAdaptiveHeight(divisor: 74.66,
                                                           h667Divisor: 83.375,
                                                           h568Divisor: 81.142)
            
         case .size450x380: return UIScreen.getAdaptiveHeight(divisor: 1.99,
                                                              h736Divisor: 1.84,
                                                              h667Divisor: 1.755,
                                                              h568Divisor: 1.494)
         case .size50x40: return UIScreen.getAdaptiveHeight(divisor: 17.92,
                                                            h844Divisor: 17.224,
                                                            h812Divisor: 16.916,
                                                            h736Divisor: 16.727,
                                                            h667Divisor: 16.675,
                                                            h568Divisor: 16.228)
         case .size56x40: return UIScreen.getAdaptiveHeight(divisor: 16)
            
         case .size13x10: return UIScreen.getAdaptiveHeight(divisor: 68.92)
            
         case .size100x80: return UIScreen.getAdaptiveHeight(divisor: 8.96,
                                                             h736Divisor: 8.55,
                                                             h667Divisor: 8.3375,
                                                             h568Divisor: 7.57)
         }
      }
   }
}

extension UIScreen {
   static func getWidth(w428:CGFloat, w414:CGFloat, w390:CGFloat, w375:CGFloat, w320:CGFloat) -> CGFloat {
      switch main.bounds.width {
      case 428: return w428
      case 414: return w414
      case 390: return w390
      case 375: return w375
      case 320: return w320
      default: return w414
      }
   }
   static func getHeight(h926:CGFloat, h896:CGFloat, h844:CGFloat, h812:CGFloat, h736:CGFloat, h667:CGFloat, h568:CGFloat) -> CGFloat {
      switch main.bounds.height {
      case 926: return h926
      case 896: return h896
      case 844: return h844
      case 812: return h812
      case 736: return h736
      case 667: return h667
      case 568: return h568
      default: return h896
      }
   }
   
   static func getAdaptiveHeight(divisor:CGFloat,
                                 h926Divisor:CGFloat = 0,
                                 h896Divisor:CGFloat = 0,
                                 h844Divisor:CGFloat = 0,
                                 h812Divisor:CGFloat = 0,
                                 h736Divisor:CGFloat = 0,
                                 h667Divisor:CGFloat = 0,
                                 h568Divisor:CGFloat = 0) -> CGFloat {
      let dividend = main.bounds.height
      let quotient = dividend / divisor
      switch dividend {
      case 926: return h926Divisor == 0 ? quotient : dividend / h926Divisor
      case 896: return h896Divisor == 0 ? quotient : dividend / h896Divisor
      case 844: return h844Divisor == 0 ? quotient : dividend / h844Divisor
      case 812: return h812Divisor == 0 ? quotient : dividend / h812Divisor
      case 736: return h736Divisor == 0 ? quotient : dividend / h736Divisor
      case 667: return h667Divisor == 0 ? quotient : dividend / h667Divisor
      case 568: return h568Divisor == 0 ? quotient : dividend / h568Divisor
      default: return quotient
      }
   }
   static func getAdaptiveWidth(divisor:CGFloat,
                                w428Divisor:CGFloat = 0,
                                w414Divisor:CGFloat = 0,
                                w390Divisor:CGFloat = 0,
                                w375Divisor:CGFloat = 0,
                                w320Divisor:CGFloat = 0) -> CGFloat {
      let dividend = main.bounds.width
      let quotient = dividend / divisor
      switch dividend {
      case 428: return w428Divisor == 0 ? quotient : dividend / w428Divisor
      case 414: return w414Divisor == 0 ? quotient : dividend / w414Divisor
      case 390: return w390Divisor == 0 ? quotient : dividend / w390Divisor
      case 375: return w375Divisor == 0 ? quotient : dividend / w375Divisor
      case 320: return w320Divisor == 0 ? quotient : dividend / w320Divisor
      default: return quotient
      }
   }
}
