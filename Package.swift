// swift-tools-version:5.8

import PackageDescription

let package = Package(
    name: "libsmb2",
    platforms: [.macOS(.v10_15), .iOS(.v13), .tvOS(.v13)],
    products: [
        .library(
            name: "Libsmb2",
            targets: ["_Libsmb2"]
        ),
        .library(
            name: "Libsmb2-ios",
            targets: ["_Libsmb2-ios"]
        ),
        .library(
            name: "Libsmb2-tvos",
            targets: ["_Libsmb2-tvos"]
        ),
        .library(
            name: "Libsmb2-macos",
            targets: ["_Libsmb2-macos"]
        ),
        .library(
            name: "Libsmb2-xros",
            targets: ["_Libsmb2-xros"]
        ),
    ],
    targets: [
        // Need a dummy target to embedded correctly.
        // https://github.com/apple/swift-package-manager/issues/6069
        .target(
            name: "_Libsmb2",
            dependencies: ["Libsmb2"],
            path: "Sources/_Libsmb2"
        ),
        .target(
            name: "_Libsmb2-ios",
            dependencies: ["Libsmb2-ios"],
            path: "Sources/_Libsmb2-ios"
        ),
        .target(
            name: "_Libsmb2-tvos",
            dependencies: ["Libsmb2-tvos"],
            path: "Sources/_Libsmb2-tvos"
        ),
        .target(
            name: "_Libsmb2-macos",
            dependencies: ["Libsmb2-macos"],
            path: "Sources/_Libsmb2-macos"
        ),
        .target(
            name: "_Libsmb2-xros",
            dependencies: ["Libsmb2-xros"],
            path: "Sources/_Libsmb2-xros"
        ),
        //AUTO_GENERATE_TARGETS_BEGIN//

        .binaryTarget(
            name: "Libsmb2",
            url: "https://github.com/WoHal/libsmb2-build/releases/download/5.0.3/Libsmb2.xcframework.zip",
            checksum: "2bcdb3c45c5d72abfbea2b1d4ff1a077b246a2c531f2ee237ac18e09dd17ed88"
        ),
        .binaryTarget(
            name: "Libsmb2-ios",
            url: "https://github.com/WoHal/libsmb2-build/releases/download/5.0.3/Libsmb2-ios.xcframework.zip",
            checksum: "8262c35decc09943382fe0a0aef5ce9e1aeaa8c5c40e1bc35326a97df01a62cb"
        ),
        .binaryTarget(
            name: "Libsmb2-tvos",
            url: "https://github.com/WoHal/libsmb2-build/releases/download/5.0.3/Libsmb2-tvos.xcframework.zip",
            checksum: "e410d99f8419fba8f86a461e0c4b22af83920d45c8e8ac61529b5371be374c77"
        ),
        .binaryTarget(
            name: "Libsmb2-macos",
            url: "https://github.com/WoHal/libsmb2-build/releases/download/5.0.3/Libsmb2-macos.xcframework.zip",
            checksum: "f337380892b90e89949a9d6be075619c98b93474a4aaa1b7847a1930c130a83c"
        ),
        .binaryTarget(
            name: "Libsmb2-xros",
            url: "https://github.com/WoHal/libsmb2-build/releases/download/5.0.3/Libsmb2-xros.xcframework.zip",
            checksum: "e91df94b6dfe2f57aacb760fab24b2d301f182c33f24936c6c046c0119271ea4"
        ),
        //AUTO_GENERATE_TARGETS_END//
    ]
)
