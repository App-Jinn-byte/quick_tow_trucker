import UIKit
import Flutter
import GoogleMaps
import Firebase
import FirebaseCrashlytics

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
      
      
      GMSServices.provideAPIKey("AIzaSyB20XGkT-LGQV7DexxbA5_q_HQrss1moSQ")
      FirebaseApp.configure()

      
      
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
