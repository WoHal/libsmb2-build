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
            checksum: "6251f3c4a394bc76451d31ba76a6a0db892170e34557030b1df0ee00d1c74788"
        ),
        .binaryTarget(
            name: "Libsmb2-ios",
            url: "https://github.com/WoHal/libsmb2-build/releases/download/5.0.3/Libsmb2-ios.xcframework.zip",
            checksum: "6cb8f72394a80affb0e8f79dd9349542f075ae7b5ffec8902de02ae9d586bcdc"
        ),
        .binaryTarget(
            name: "Libsmb2-tvos",
            url: "https://github.com/WoHal/libsmb2-build/releases/download/5.0.3/Libsmb2-tvos.xcframework.zip",
            checksum: "b2784683418d4135fcc264621b54238646c3cf2e7450bf48579b71daf2e8e43d"
        ),
        .binaryTarget(
            name: "Libsmb2-macos",
            url: "https://github.com/WoHal/libsmb2-build/releases/download/5.0.3/Libsmb2-macos.xcframework.zip",
            checksum: "8e882bfb44fcb201e3cbcdd71fa59a46e9aba7bc1207b3bb4b8ce13e25531aaf"
        ),
        .binaryTarget(
            name: "Libsmb2-xros",
            url: "https://github.com/WoHal/libsmb2-build/releases/download/5.0.3/Libsmb2-xros.xcframework.zip",
            checksum: "150290a51b48e7f57d5ecdddc238f50626866bd326cb3400f77829071b177962"
        ),
        //AUTO_GENERATE_TARGETS_END//
    ]
)
