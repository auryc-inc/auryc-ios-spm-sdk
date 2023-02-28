# Auryc for iOS

*Auryc is a modern take on analytics.* There's no need to ship event tracking code, no need to wait days or weeks for data to accumulate, no need to muddle your codebase, and no need to fumble with rigid reports.

For the first time, meaningful product questions can be answered just as soon as they're asked.

See `CHANGELOG.md` for what's new.

# Installation

We recommend using <a href='http://cocoapods.org' target='_blank'>Cocoapods</a> to quickly and easily add Auryc:

1. Install Cocoapods by running `sudo gem install cocoapods`.
2. Create a file in your Xcode project directory called `Podfile`.
3. Add the following line to your Podfile:
  ```ruby
     pod 'AurycSDK'
  ```
4. Run `pod install` within your Xcode project directory.
5. Initialize Auryc with your app ID. We recommend doing this in `applicationDidFinishLaunching:` or `application:didFinishLaunchingWithOptions:` in your Application delegate as follows:

    ```swift
    import AurycSDK

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        Auryc.initialize("YOUR_APP_ID")
        
        /* Other launch code goes here */
        
        return true
    }
    ```

    ```objectivec
     #import <AurycSDK/Auryc.h>

     - (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
         [Auryc initialize:@"YOUR_APP_ID"];

         /* Other launch code goes here */

         return YES;
     }
    ```
6. Make sure you open the file with the extension .xcworkspace

Or you can install Auryc manually:
  1. [Download the Auryc iOS library](https://storage.googleapis.com/auryc-sdk-ios/AurycSDK.xcframework_rc2_2.2.0.zip).
  2. Unzip the downloaded file and drag `AurycSDK.xcframework` into your XCode project. Make sure to select *Copy items if needed* and add the framework to your app targets.
  3. Click on the project (blue project icon), and select "General".
  4. Within General, find "AurycSDK.xcframework" in the "Frameworks, Libraries, and Embedded Content" section and change it to from "Do Not Embed" to "Embed & Sign".
  5. Initialize AurycSDK with your app ID, as illustrated in the code snippet above.
