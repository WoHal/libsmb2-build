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
            checksum: "5372a256dd50abcec20cdabc6ad03ff163d82bf8c7bda4a12a0f6f548dc979b7"
        ),
        .binaryTarget(
            name: "Libsmb2-ios",
            url: "https://github.com/WoHal/libsmb2-build/releases/download/5.0.3/Libsmb2-ios.xcframework.zip",
            checksum: "cdd11c6b1c152317fca8cac8ad7bb83e263c04c6bda6958410d39aa961f9ce5b"
        ),
        .binaryTarget(
            name: "Libsmb2-tvos",
            url: "https://github.com/WoHal/libsmb2-build/releases/download/5.0.3/Libsmb2-tvos.xcframework.zip",
            checksum: "e5d578bc94107a2cdb8ebcc9cff6add692bab93b33e28bdc2a961a38754fe4cc"
        ),
        .binaryTarget(
            name: "Libsmb2-macos",
            url: "https://github.com/WoHal/libsmb2-build/releases/download/5.0.3/Libsmb2-macos.xcframework.zip",
            checksum: "8a1407f1ec4d0780d6c100c7332b2e8b0a77386b4d9ce46624f5facb1e69bf57"
        ),
        .binaryTarget(
            name: "Libsmb2-xros",
            url: "https://github.com/WoHal/libsmb2-build/releases/download/5.0.3/Libsmb2-xros.xcframework.zip",
            checksum: "fdf62c14ddc26d6f6fe8fcfcb74541d70faadad3305f281f67a07d91ac59ee54"
        ),
        //AUTO_GENERATE_TARGETS_END//
    ]
)
