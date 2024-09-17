import ProjectDescription

let project = Project(
    name: "WishlistWrangler",
    targets: [
        .target(
            name: "WishlistWrangler",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.WishlistWrangler",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchStoryboardName": "LaunchScreen.storyboard",
                ]
            ),
            sources: ["WishlistWrangler/Sources/**"],
            resources: ["WishlistWrangler/Resources/**"],
            dependencies: []
        ),
        .target(
            name: "WishlistWranglerTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.WishlistWranglerTests",
            infoPlist: .default,
            sources: ["WishlistWrangler/Tests/**"],
            resources: [],
            dependencies: [.target(name: "WishlistWrangler")]
        ),
    ]
)
