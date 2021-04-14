// swift-tools-version:5.0
///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///

import PackageDescription

let package = Package(
    name: "SwiftyDropbox",
    platforms: [
        .macOS(.v10_12),
        .iOS(.v10)
    ],
    products: [
        .library(name: "SwiftyDropbox", targets:["SwiftyDropbox"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMinor(from: "5.4.2")),
    ],
    targets: [
        .target(
            name: "SwiftyDropbox",
            dependencies: ["Alamofire"],
            path: "Source"
        )
    ],
    swiftLanguageVersions: [.v5]
)
