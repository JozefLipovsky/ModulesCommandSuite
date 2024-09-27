// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ModulesCommandSuite",
    products: [
        .plugin(
            name: "AddModule",
            targets: ["AddModule"]
        )
    ],
    targets: [
        .plugin(
            name: "AddModule",
            capability: .command(
                intent: .custom(verb: "add-module", description: "Test test..."),
                permissions: [.writeToPackageDirectory(reason: "Update Package.swift and adds basic folders and files structure when adding new modules")]
            )
        )
    ]
)
