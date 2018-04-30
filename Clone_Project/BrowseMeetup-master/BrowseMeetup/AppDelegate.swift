//
//  AppDelegate.swift
//  BrowseMeetup
//
//  Created by Ziad on 10/13/16.
//  Copyright © 2016 Intensify Studio. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    // 최초 AppDelegate 호출될때 ApplicationConfiguratotr 객체생성
    let applicationConfiguration = ApplicationConfigurator()
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        let window                      = UIWindow(frame: UIScreen.main.bounds)
        window.backgroundColor          = UIColor.white
        
        // ApplicationConfigurator 의 rootview설정을 위해 installRootViewControllerIntoWindow 호출
        applicationConfiguration.installRootViewControllerIntoWindow(window)
        
        window.makeKeyAndVisible()
        self.window = window
        
        return true
    }
}

