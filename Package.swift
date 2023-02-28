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
      url: "https://storage.googleapis.com/auryc-sdk-ios/AurycSDK.xcframework_rc2_2.2.0.zip",
      checksum: "db78150ff8a3d8c996905fb4037007a55be0ea4c57e6ca91ab454e9126d41003"
    ),
  ]
)
