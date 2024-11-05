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
            checksum: "a7ddc537ebcab6355ada8557b98b327d4f9b72883c6f1f5198342fd8235b82b6"
        ),
        .binaryTarget(
            name: "Libsmb2-ios",
            url: "https://github.com/WoHal/libsmb2-build/releases/download/5.0.3/Libsmb2-ios.xcframework.zip",
            checksum: "48bec3f327e4e95d1ac1494ca750243d7a8c9f6058854534f8ec5137c6ccd22d"
        ),
        .binaryTarget(
            name: "Libsmb2-tvos",
            url: "https://github.com/WoHal/libsmb2-build/releases/download/5.0.3/Libsmb2-tvos.xcframework.zip",
            checksum: "fc9853aadb436b141d9dfc15b26118c620641e82cfd0788b8a186181e14ffe32"
        ),
        .binaryTarget(
            name: "Libsmb2-macos",
            url: "https://github.com/WoHal/libsmb2-build/releases/download/5.0.3/Libsmb2-macos.xcframework.zip",
            checksum: "e0df48852daff10b19020257320226b35d28af982eee030358ebd7dbb9646d50"
        ),
        .binaryTarget(
            name: "Libsmb2-xros",
            url: "https://github.com/WoHal/libsmb2-build/releases/download/5.0.3/Libsmb2-xros.xcframework.zip",
            checksum: "758796d1cd17d69b84dc61aa42865c3ded8f2f3a941620a3d3d81beedf6a0243"
        ),
        //AUTO_GENERATE_TARGETS_END//
    ]
)
