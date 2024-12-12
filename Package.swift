
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
    	.binaryTarget(name: "libkiwisolver", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.4/libkiwisolver.zip", checksum: "8df4aaf1e50f9bb920b36273300cd361268187a364b547598fc04baf4a641a52"),
    	.binaryTarget(name: "libavdevice", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.4/libavdevice.zip", checksum: "2db877c9935c24ac93ab48766b65281f6120e086689a6d18991ee9912b378f21"),
    	.binaryTarget(name: "libavfilter", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.4/libavfilter.zip", checksum: "a513680bae1f9b93dbe821e3a95a7fcb81d8253208201b14b95efa9871ea6566"),
    	.binaryTarget(name: "libswresample", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.4/libswresample.zip", checksum: "b0eb2f96ea70b35536749f7b36f0f2f07ad0d4f294b8b2b9a6208093dbc78d3b"),
    	.binaryTarget(name: "libavformat", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.4/libavformat.zip", checksum: "4782678d66a77d40608ed3caaec44ea33b2a8f41d816cd1aed87e37b5c88078f"),
    	.binaryTarget(name: "libswscale", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.4/libswscale.zip", checksum: "aeb78b441442156b915c760bdedaab4c588ef22fad95909d82ca5a3afe52a89a"),
    	.binaryTarget(name: "libavresample", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.4/libavresample.zip", checksum: "c82e0fd9edf0d61c46cbbc49aa6ea8627183eca13d7c9c1bb337db54a2efd409"),
    	.binaryTarget(name: "libavutil", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.4/libavutil.zip", checksum: "e247a4f7b6f3b8b83d8a4ba8ca4ef9a5ffc60f817ad5b8f3cfe026be60c3f819"),
    	.binaryTarget(name: "libavcodec", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.4/libavcodec.zip", checksum: "cac9dd0175504f2982fd0631b3e4c580b1e73f55a51c6cbafe494ec29b289340"),
    	.binaryTarget(name: "libffpyplayer", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.4/libffpyplayer.zip", checksum: "bb0ad2d5b07d1bbecd46c273e2cc5a044a697f6b513a4c39709eb2ba55509425"),
    	.binaryTarget(name: "libmatplotlib", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.4/libmatplotlib.zip", checksum: "323ed0a2788b14295d7253c511e896852ec5234b56de09e34cac689af49ee079"),
    	.binaryTarget(name: "libpillow", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.4/libpillow.zip", checksum: "bb0f7bd45d884ac8ce23c0095bb3c14f7e68cf72b9c68e2ddafd6b27e5be249b"),
    ]

)
