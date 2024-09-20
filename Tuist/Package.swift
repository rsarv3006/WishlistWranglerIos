// swift-tools-version: 5.9
import PackageDescription

#if TUIST
    import ProjectDescription

    let packageSettings = PackageSettings(
        // Customize the product types for specific package product
        // Default is .staticFramework
        // productTypes: ["Alamofire": .framework,] 
        productTypes: [
            "Bedrock": .framework,
        ]
    )
#endif

let package = Package(
    name: "WishlistWrangler",
    dependencies: [
            .package(url: "https://github.com/rsarv3006/bedrock", from: "1.0.6")
    ]
)
