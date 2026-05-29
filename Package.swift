// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "ISO8601-re2c",
    platforms: [.iOS(.v15)],
    products: [
        .library(name: "ISO8601-re2c", targets: ["ISO8601_re2c"]),
    ],
    targets: [
        .target(
            name: "ISO8601_re2c",
            path: "ISO8601",
            exclude: [
                "AppDelegate.h",
                "AppDelegate.m",
                "ViewController.h",
                "ViewController.m",
                "main.m",
                "ISO8601-Info.plist",
                "ISO8601-Prefix.pch",
                "en.lproj",
                "NJISO8601Parser.re",
            ],
            publicHeadersPath: ".",
            cSettings: [
                .unsafeFlags([
                    "-fno-objc-arc",
                    "-include", "Foundation/Foundation.h",
                ]),
            ]
        ),
    ]
)
