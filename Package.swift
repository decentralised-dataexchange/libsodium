// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "libsodium",
    platforms: [
        .iOS(.v12),
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "libsodium",
            targets: ["libsodium"]
        ),
    ],
   targets: [
        .target(
            name: "libsodium",
            path: "Sources/libsodium/Classes", // <-- points to where your source actually is
            publicHeadersPath: "include", // <-- where sodium.h lives
            cSettings: [
                .headerSearchPath("include") // makes headers visible to C/ObjC/Swift
            ]
        )
    ]
)
