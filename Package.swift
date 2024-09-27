// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ModulesCommandSuite",
    products: [
        .plugin(
            name: "ModulesCommandSuite",
            targets: ["ModulesCommandSuite"]
        )
    ],
    targets: [
        .plugin(
            name: "ModulesCommandSuite",
            capability: .command(
                intent: .custom(verb: "ModulesCommandSuite", description: "Test test..."),
                permissions: [.writeToPackageDirectory(reason: "Update Package.swift and adds basic folders and files structure when adding new modules")]
            )
        )
    ]
)
