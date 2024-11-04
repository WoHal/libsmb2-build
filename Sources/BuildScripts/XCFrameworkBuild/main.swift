import Foundation

do {
    let options = try ArgumentOptions.parse(CommandLine.arguments)
    try Build.performCommand(options)

    try BuildLibsmb2().buildALL()
} catch {
    print(error.localizedDescription)
    exit(1)
}


enum Library: String, CaseIterable {
    case libsmb2
    var version: String {
        switch self {
        case .libsmb2:
            return "v5.0.3"
        }
    }

    var url: String {
        switch self {
        case .libsmb2:
            return "https://github.com/WoHal/libsmb2"
        }
    }


    // for generate Package.swift
    var targets : [PackageTarget] {
        switch self {
        case .libsmb2:
            return  [
                .target(
                    name: "Libsmb2",
                    url: "https://github.com/WoHal/libsmb2-build/releases/download/\(BaseBuild.options.releaseVersion)/Libsmb2.xcframework.zip",
                    checksum: "https://github.com/WoHal/libsmb2-build/releases/download/\(BaseBuild.options.releaseVersion)/Libsmb2.xcframework.checksum.txt"
                ),
                .target(
                    name: "Libsmb2-ios",
                    url: "https://github.com/WoHal/libsmb2-build/releases/download/\(BaseBuild.options.releaseVersion)/Libsmb2-ios.xcframework.zip",
                    checksum: "https://github.com/WoHal/libsmb2-build/releases/download/\(BaseBuild.options.releaseVersion)/Libsmb2-ios.xcframework.checksum.txt"
                ),
                .target(
                    name: "Libsmb2-tvos",
                    url: "https://github.com/WoHal/libsmb2-build/releases/download/\(BaseBuild.options.releaseVersion)/Libsmb2-tvos.xcframework.zip",
                    checksum: "https://github.com/WoHal/libsmb2-build/releases/download/\(BaseBuild.options.releaseVersion)/Libsmb2-tvos.xcframework.checksum.txt"
                ),
                .target(
                    name: "Libsmb2-macos",
                    url: "https://github.com/WoHal/libsmb2-build/releases/download/\(BaseBuild.options.releaseVersion)/Libsmb2-macos.xcframework.zip",
                    checksum: "https://github.com/WoHal/libsmb2-build/releases/download/\(BaseBuild.options.releaseVersion)/Libsmb2-macos.xcframework.checksum.txt"
                ),
                .target(
                    name: "Libsmb2-xros",
                    url: "https://github.com/WoHal/libsmb2-build/releases/download/\(BaseBuild.options.releaseVersion)/Libsmb2-xros.xcframework.zip",
                    checksum: "https://github.com/WoHal/libsmb2-build/releases/download/\(BaseBuild.options.releaseVersion)/Libsmb2-xros.xcframework.checksum.txt"
                ),
            ]
        default:
            return []
        }
    }
}


private class BuildLibsmb2: BaseBuild {

    init() {
        super.init(library: .libsmb2)
    }

    override func beforeBuild() {
        try? super.beforeBuild()

        // apply patch
        let patch = directoryURL + "patches"
        if FileManager.default.fileExists(atPath: patch.path) {
            _ = try? Utility.launch(path: "/usr/bin/git", arguments: ["checkout", "."], currentDirectoryURL: directoryURL)
            let fileNames = try! FileManager.default.contentsOfDirectory(atPath: patch.path).sorted()
            for fileName in fileNames {
                if !fileName.hasSuffix(".patch") {
                    continue
                }
                try! Utility.launch(path: "/usr/bin/git", arguments: ["apply", "\((patch + fileName).path)"], currentDirectoryURL: directoryURL)
            }
        }
    }

    override func cFlags(platform: PlatformType, arch: ArchType) -> [String] {
        var cFlags = super.cFlags(platform: platform, arch: arch)
        cFlags.append("-Wno-error=implicit-function-declaration")
        // cFlags.append("-malign-double")
        // cFlags.append("-Werror=cast-align")
        return cFlags
    }

    override func environment(platform: PlatformType, arch: ArchType) -> [String: String] {
        var env = super.environment(platform: platform, arch: arch)
        let asn1DirectoryURL = URL.currentDirectory + ["../bin", ArchType.hostArch.rawValue]
        env["PATH"] = asn1DirectoryURL.path + ":" + (directoryURL + "buildtools/bin").path + ":" + (env["PATH"] ?? "")
        env["PATH"] = "/Library/Frameworks/Python.framework/Versions/Current/bin:" + (env["PATH"] ?? "") // GIT ACTION python path
        return env
    }

    override func arguments(platform: PlatformType, arch: ArchType) -> [String] {
        let options = [
            "-DBUILD_SHARED_LIBS=OFF",
            "-DCMAKE_INSTALL_PREFIX=\(thinDir(platform: platform, arch: arch).path)"
        ]

        return options
    }

}
