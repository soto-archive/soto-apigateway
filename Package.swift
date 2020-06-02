// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "APIGateway",
    platforms: [.iOS(.v12), .tvOS(.v12), .watchOS(.v5)],
    products: [
        .library(name: "APIGateway", targets: ["APIGateway"]),
    ],
    dependencies: [
        .package(url: "https://github.com/swift-aws/aws-sdk-swift-core.git", .upToNextMinor(from: "4.6.0"))
    ],
    targets: [
        .target(name: "APIGateway", dependencies: ["AWSSDKSwiftCore", "APIGatewayMiddleware"], path: "./Sources/APIGateway"),
        .target(name: "APIGatewayMiddleware", dependencies: ["AWSSDKSwiftCore"], path: "./Sources/APIGatewayMiddleware"),
    ]
)
