//
//  Configuration.swift
//  DailyNews
//
//  Created by noor on 22/09/23.
//

import Foundation


enum Configuration {
   enum Error: Swift.Error {
      case missingKey, invalidValue
   }
   enum Constants:String {
      case apiKey = "NEWS_API_KEY"
   }
   static func value<T>(for key: String) throws -> T where T: LosslessStringConvertible {
      guard let object = Bundle.main.object(forInfoDictionaryKey:key) else {
         throw Error.missingKey
      }
      
      switch object {
      case let value as T:
         return value
      case let string as String:
         guard let value = T(string) else { fallthrough }
         return value
      default:
         throw Error.invalidValue
      }
   }
   
   static func value<T>(for key: Constants) throws -> T where T: LosslessStringConvertible {
      guard let object = Bundle.main.object(forInfoDictionaryKey: key.rawValue) else {
         throw Error.missingKey
      }
      switch object {
      case let value as T:
         return value
      case let string as String:
         guard let value = T(string) else { fallthrough }
         return value
      default:
         throw Error.invalidValue
      }
   }
}
