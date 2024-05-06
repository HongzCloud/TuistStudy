import ProjectDescription

let project = Project(
    name: "TuistStudy",
    settings: .settings(configurations: [.debug(name: .debug),
                                         .release(name: .release),
                                         .debug(name: "QA")]),
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
