//
//  UserDefaultsHelper.swift
//  User Defaults Helper
//
//  Created by Eric Boxer on 11/25/17.
//  Copyright © 2017 Eric Boxer. All rights reserved.
//

import Foundation

/**
 A helper singleton class to manage UserDefualts for an application.
 */
class UserDefaultsHelper {
    
    
    // Singletoned
    static let instance = UserDefaultsHelper()
    
    // MARK: Enum Defs
    
    /**
     suggested enums to use
     */
    public enum udhKeys: String {
        case appName = "APP_NAME"
        
        case backgroundColor =  "BG_COLOR"
        case fontColor =        "FONT_COLOR"
        case fontFamily =       "FONT_FAMILY"
        case fontSize =         "FONT_SIZE"
        
        enum network: String {
            typealias RawValue = String
            
            case ipAddress =    "IP_ADDRESS"
            case subnet =       "SUBNET_MASK"
            case gateway =      "GATEWAY"
            case sendPort =     "SEND_PORT"
            case listenPort =   "LISTEN_PORT"
        }
    }
    
    // Your bundle identifier. Force upwrapped for your enjoyment.
    fileprivate var _bundleIdentifier = Bundle.main.bundleIdentifier!
    fileprivate let _bundleVersion = Bundle.main.infoDictionary!["CFBundleVersion"] as! String
    fileprivate var _applicationName = Bundle.main.infoDictionary!["CFBundleName"] as! String
    
    // This where all the settings will be stored
    var applicationSettings = Dictionary<String,Any>() // Local
    var userSettings = UserDefaults() // System Wide
    
    //
    private init() {
        // Makes sure we're starting with an empty Dict
        applicationSettings.removeAll()
        
        // If settings exist, import them. If they don't create some settings
        if (userSettings.dictionary(forKey: _bundleIdentifier) != nil) {
            for (key, value) in userSettings.dictionary(forKey: _bundleIdentifier)! {
                applicationSettings[key] = value
            }
        } else {
            // TODO: When updated to enums, remove raw value
            addSetting(key: udhKeys.appName.rawValue, value: _applicationName)
            saveDefaults()
        }
    }
    
    // MARK: Functionality!
    /**
     Stores application settings to UserDefaults.
     */
    func saveDefaults() {
        userSettings.setValue(applicationSettings, forKey: _bundleIdentifier)
    }
    
    /**
     Remove all of the settings from UserDefaults
     */
    func removeDefaults(){
        userSettings.removeObject(forKey: _bundleIdentifier)
    }
    
    /**
     Stages settings locally for storage to UserDefaults (UserSettings)
     
     - parameter key: UserDefautls Key
     - parameter value: UserDefaults Value
     */
    // TODO: Make use of udhKeys enum for key settings
    func addSetting(key: String, value: Any){
        applicationSettings[key] = value
    }
    
    /**
        Returns the current version number
     */
    func version() -> String{
        return _bundleVersion
    }
}

