import UIKit
import Capacitor
import FBSDKCoreKit
 
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
 
    var window: UIWindow?
    
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    FBSDKCoreKit.ApplicationDelegate.shared.application(application, didFinishLaunchingWithOptions: launchOptions)
    // Override point for customization after application launch.
    return true
  }
 
  func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
    // Called when the app was launched with a url. Feel free to add additional processing here,
    // but if you want the App API to support tracking app url opens, make sure to keep this call
    if CAPBridge.handleOpenUrl(url, options) {
        return FBSDKCoreKit.ApplicationDelegate.shared.application(app, open: url, options: options)
      }
      else{
       return false
      }
  }
}
