// swift-tools-version:6.0
import PackageDescription

let package = Package(
    name: "TCEffectPlayerKit",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "TCEffectPlayerKit", targets: ["TCEffectPlayerKit"])
    ],
    dependencies: [
        .package(url: "https://github.com/Tencent-RTC/TUICore_SwiftPM.git", from: "9.0.7652"),
        .package(url: "https://github.com/Tencent-RTC/GfitAR_SwiftPM.git", from: "3.4.244")
    ],
    targets: [
        .target(
            name: "TCEffectPlayerKit",
            dependencies: [
                .product(name: "TUICore_SwiftPM", package: "TUICore_SwiftPM"),
                .product(name: "GfitAR_SwiftPM", package: "GfitAR_SwiftPM")
            ],
            path: "Sources",
            publicHeadersPath: "."
        )
    ]
)
