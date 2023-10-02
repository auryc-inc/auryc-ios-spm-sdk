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
      url: "https://storage.googleapis.com/auryc-sdk-ios/AurycSDK.xcframework_rc2_2.2.1.zip",
      checksum: "488b11e6d91f0849c2eed697ac48a86910f4948120830f058498ab2f239101c1"
    ),
  ]
)
