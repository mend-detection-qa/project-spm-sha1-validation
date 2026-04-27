// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "MendScienceLab",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "MendScienceLab",
            targets: ["MendScienceLab"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/braintree/braintree_ios", exact: "6.23.3"),
        .package(url: "https://github.com/google/promises", exact: "2.4.0"),
        .package(url: "https://github.com/HeroTransitions/Hero", exact: "1.6.1"),
        .package(url: "https://github.com/SDWebImage/SDWebImage", exact: "5.21.3"),
    ],
    targets: [
        .target(
            name: "MendScienceLab",
            dependencies: [
                .product(name: "BraintreeCore", package: "braintree_ios"),
                .product(name: "FBLPromises", package: "promises"),
                .product(name: "Hero", package: "Hero"),
                .product(name: "SDWebImage", package: "SDWebImage"),
            ]
        ),
    ]
)
