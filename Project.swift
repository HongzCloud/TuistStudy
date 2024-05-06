import ProjectDescription

let project = Project(
    name: "TuistStudy",
    targets: [
        .target(
            name: "TuistStudy",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.TuistStudy",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchStoryboardName": "LaunchScreen.storyboard",
                ]
            ),
            sources: ["TuistStudy/Sources/**"],
            resources: ["TuistStudy/Resources/**"],
            dependencies: []
        ),
        .target(
            name: "TuistStudyTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.TuistStudyTests",
            infoPlist: .default,
            sources: ["TuistStudy/Tests/**"],
            resources: [],
            dependencies: [.target(name: "TuistStudy")]
        ),
    ]
)
