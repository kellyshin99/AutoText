//
//  AppDelegate.swift
//  LocationAlert
//
//  Created by Kelly Shin on 7/15/15.
//  Copyright (c) 2015 KellyShin. All rights reserved.
//

import UIKit
import CoreLocation
import Fabric
import Crashlytics

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, CLLocationManagerDelegate {
    
    var window: UIWindow?
    let locationManager = CLLocationManager()
    let defaults = NSUserDefaults.standardUserDefaults()
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        application.registerUserNotificationSettings(UIUserNotificationSettings(forTypes: UIUserNotificationType.Sound | UIUserNotificationType.Alert | UIUserNotificationType.Badge, categories: nil))
        
        UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName: UIColor.whiteColor()]
        
        
        // Save data
        if let phoneValue = defaults.valueForKey("currentPhoneNumber") as? String {
            SharedData.currentPhoneNumber = phoneValue
        }
        
        if let nameValue = defaults.valueForKey("currentUserName") as? String {
            SharedData.currentUserName = nameValue
        }
        
        if let locationValue = defaults.valueForKey("locationAddress") as? String {
            SharedData.locationAddress = locationValue
        }
        
        if let contactValue = defaults.valueForKey("contactName") as? String {
            SharedData.contactName = contactValue
        }
        
        Fabric.with([Crashlytics()]) 
        
        return true
    }
    
    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }
    
    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }
    
    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }
    
    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }
    
    func application(application: UIApplication, didReceiveLocalNotification notification: UILocalNotification) {
        
//        let successAlert = UIAlertController(title: "Success!", message: "Message Sent", preferredStyle: .Alert)
//        successAlert.addAction(UIAlertAction(title: "OK", style: .Cancel, handler: nil))
//        UIApplication.sharedApplication().keyWindow?.rootViewController?.presentViewController(successAlert, animated: true, completion: nil)
        
//        let failedAlert = UIAlertController(title: "Failed", message: "Message failed to send.", preferredStyle: .Alert)
//        failedAlert.addAction(UIAlertAction(title: "OK", style: .Cancel, handler: nil))
//        UIApplication.sharedApplication().keyWindow?.rootViewController?.presentViewController(failedAlert, animated: true, completion: nil)
        
    }
    
    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
        
        if locationManager.monitoredRegions.isEmpty {
            // stop updating user location
        } else {
            // continue updating and do default behavior
        }
        
    }
    
}
