// swift-tools-version:5.3

import PackageDescription

let package = Package(
  name: "AurycSDK",
  platforms: [.iOS(.v10)],
  products: [
      .library(
          name: "AurycSDK",
          targets: ["AurycSDK"]
      )
  ],
  targets: [
    .binaryTarget(
      name: "AurycSDK",
      url: "https://storage.googleapis.com/auryc-sdk-ios/AurycSDK.xcframework_rc3_2.2.1.zip",
      checksum: "7c5c1436063d2bb4ed7956efa1a1246c7d868b2c9dfe90a94bdc43cc838f3b80"
    ),
  ]
)
