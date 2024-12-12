
// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "KivyExtra",
    platforms: [.iOS(.v13)],
    products: [
    	.library(
        	name: "KiwiSolver",
        	targets: [
        		"KiwiSolver"
        	]
    	),
    	.library(
        	name: "FFMpeg",
        	targets: [
        		"FFMpeg"
        	]
    	),
    	.library(
        	name: "FFPyplayer",
        	targets: [
        		"FFPyplayer"
        	]
    	),
    	.library(
        	name: "MatPlotLib",
        	targets: [
        		"MatPlotLib"
        	]
    	),
    	.library(
        	name: "Pillow",
        	targets: [
        		"Pillow"
        	]
    	),
    ],
    dependencies: [
    	.package(url: "https://github.com/KivySwiftLink/PythonCore", .upToNextMajor(from: "311.0.0"))
    ], targets: [
    	.target(
        	name: "KiwiSolver",
        	dependencies: [
        		.product(name: "PythonCore", package: "PythonCore"),
        		"libkiwisolver",
        	],
        	resources: [
        	],
        	linkerSettings: [
        	]
    	),
    	.target(
        	name: "FFMpeg",
        	dependencies: [
        		.product(name: "PythonCore", package: "PythonCore"),
        		"libavdevice",
        		"libavfilter",
        		"libswresample",
        		"libavformat",
        		"libswscale",
        		"libavresample",
        		"libavutil",
        		"libavcodec",
        	],
        	resources: [
        	],
        	linkerSettings: [
        		.linkedFramework("VideoToolbox"),
        	]
    	),
    	.target(
        	name: "FFPyplayer",
        	dependencies: [
        		.product(name: "PythonCore", package: "PythonCore"),
        		"FFMpeg",
        		"libffpyplayer",
        	],
        	resources: [
        	],
        	linkerSettings: [
        		.linkedFramework("CoreVideo"),
        		.linkedFramework("CoreMedia"),
        		.linkedFramework("CoreImage"),
        		.linkedFramework("AVFoundation"),
        		.linkedFramework("UIKit"),
        		.linkedFramework("CoreMotion"),
        	]
    	),
    	.target(
        	name: "MatPlotLib",
        	dependencies: [
        		.product(name: "PythonCore", package: "PythonCore"),
        		"KiwiSolver",
        		"libmatplotlib",
        	],
        	resources: [
        	],
        	linkerSettings: [
        	]
    	),
    	.target(
        	name: "Pillow",
        	dependencies: [
        		.product(name: "PythonCore", package: "PythonCore"),
        		"libpillow",
        	],
        	resources: [
        	],
        	linkerSettings: [
        	]
    	),
    	.binaryTarget(name: "libkiwisolver", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.3/libkiwisolver", checksum: "7f21a86ac9ab84adf3cc0e6cac069a024e7219c25285088deedbe388635d0527"),
    	.binaryTarget(name: "libavdevice", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.3/libavdevice", checksum: "6303ca65c0cc0db18b8505c22c32ef1d62c65d8c682d3e8a3709332b716193fe"),
    	.binaryTarget(name: "libavfilter", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.3/libavfilter", checksum: "46641346eee67cc84a1ff29c675b678ba7bec192ecd4db1cf096250f5d3df301"),
    	.binaryTarget(name: "libswresample", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.3/libswresample", checksum: "0d6ecb011ebd4d2182d381fd8771b02aded6cd430878bca1954d7f92bb206ffc"),
    	.binaryTarget(name: "libavformat", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.3/libavformat", checksum: "3360e5be95a18fe67f9a07164aeef59d99f5f338c20278ec4da29bda0e7131c8"),
    	.binaryTarget(name: "libswscale", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.3/libswscale", checksum: "4e15b0befc302fa769639d78a9d0d3c87fff27e7ef311a0d082fe93ea4ee13b0"),
    	.binaryTarget(name: "libavresample", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.3/libavresample", checksum: "1efdbea7ae43fd9c5600c3acddcd45d3d6f5ae0f92f3b72b84d0fb0dbd464949"),
    	.binaryTarget(name: "libavutil", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.3/libavutil", checksum: "79bd76f72da0c1447e5169fb5cfcb3174514ea7e8b3aa1bab9cfa08c62554441"),
    	.binaryTarget(name: "libavcodec", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.3/libavcodec", checksum: "79f7e64c912ab0b2763c7baa7a66a7d5123ebc088b06f21a88e38e66a8e1387e"),
    	.binaryTarget(name: "libffpyplayer", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.3/libffpyplayer", checksum: "7ebd6551efe82dc928e4c28bf447bece0b520b2968cb37ab5e490a86d45d1edc"),
    	.binaryTarget(name: "libmatplotlib", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.3/libmatplotlib", checksum: "2e287a71aeb3160b5d881017fdeb8542a50e7ed3a24aefcbaab6fcbbf8bc42c0"),
    	.binaryTarget(name: "libpillow", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.3/libpillow", checksum: "a68a119d9289009a3e7c7694954db800b682afaee0fa4de8b3bb691e9ca85f0e"),
    ]

)
