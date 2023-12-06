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
      url: "https://storage.googleapis.com/auryc-sdk-ios/AurycSDK.xcframework_rc1_2.2.2.zip",
      checksum: "6ed9c836614590fe3bb3ff6219cf87d5092cfbb6f0752086ffa3af482a05ecb9"
    ),
  ]
)
