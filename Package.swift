// swift-tools-version:4.2

import PackageDescription

let package = Package(
  name: "APIGateway",
  products: [
      .library(name: "APIGateway", targets: ["APIGateway"]),
  ],
  dependencies: [
      .package(url: "https://github.com/swift-aws/aws-sdk-swift-core.git", .upToNextMinor(from: "3.4.0"))
  ],
  targets: [
      .target(name: "APIGateway", dependencies: ["AWSSDKSwiftCore"]),
  ]
)
