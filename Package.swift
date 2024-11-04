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
            url: "https://github.com/WoHal/libsmb2-build/releases/download/v5.0.2/Libsmb2.xcframework.zip",
            checksum: "4f47c992839a6221cefd364333f951bd05d0c5dbc7f63cb166d237b6528a2410"
        ),
        .binaryTarget(
            name: "Libsmb2-ios",
            url: "https://github.com/WoHal/libsmb2-build/releases/download/v5.0.2/Libsmb2-ios.xcframework.zip",
            checksum: "a3fc6ef28c280374a012b8260152d201348130a0cd775559ffdd4804bd12e57c"
        ),
        .binaryTarget(
            name: "Libsmb2-tvos",
            url: "https://github.com/WoHal/libsmb2-build/releases/download/v5.0.2/Libsmb2-tvos.xcframework.zip",
            checksum: "8c224aca017cd8ca1c3ec2619fa6b57fb4b636ff78d5de999fdc75076f1c805e"
        ),
        .binaryTarget(
            name: "Libsmb2-macos",
            url: "https://github.com/WoHal/libsmb2-build/releases/download/v5.0.2/Libsmb2-macos.xcframework.zip",
            checksum: "4a3b5213122b31bdc446bb6932a90879cee1a9413baf5c6e56b9692ba71a91c5"
        ),
        .binaryTarget(
            name: "Libsmb2-xros",
            url: "https://github.com/WoHal/libsmb2-build/releases/download/v5.0.2/Libsmb2-xros.xcframework.zip",
            checksum: "34308513d5ed62e3ff7fd3cb5da549778c327832a3a93b277f57d76e50cdf1a7"
        ),
        //AUTO_GENERATE_TARGETS_END//
    ]
)
