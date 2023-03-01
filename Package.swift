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
      url: "https://storage.googleapis.com/auryc-sdk-ios/AurycSDK.xcframework_rc3_2.2.0.zip",
      checksum: "dae7be939e7705935b62ceb92d0ac88c8fdaa86fd8944b279d8c78620fc02cd3"
    ),
  ]
)
