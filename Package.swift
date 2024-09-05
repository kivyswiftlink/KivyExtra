
// swift-tools-version: 5.8

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
        	name: "MaterialYouColor", 
        	targets: [
        		"MaterialYouColor"
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
    ], 
    targets: [
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
        		.product(name: "FFMpeg", package: "FFMpeg"), 
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
        		.product(name: "KiwiSolver", package: "KiwiSolver"), 
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
        		"libfreetype", 
        		"libpillow", 
        		"libjpeg", 
        	], 
        	resources: [
        	], 
        	linkerSettings: [
        	]
    	), 
    	.binaryTarget(name: "libkiwisolver", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.1/libkiwisolver.zip", checksum: "41e8cd08f09e4106641d4970cd7cbe24f1f432e9ef8b47b41933472b6eb11d89"), 
    	.binaryTarget(name: "libavdevice", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.1/libavdevice.zip", checksum: "fa2b5b7f2a9162868dae0048de2a6de1252441de96b5c0b68008982a9b427059"), 
    	.binaryTarget(name: "libavfilter", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.1/libavfilter.zip", checksum: "3f83e1d1f89abaeafd147dd2b95d476bc4e6b976cb9101c61d22b5c39138aa8b"), 
    	.binaryTarget(name: "libswresample", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.1/libswresample.zip", checksum: "7e0cba75ea45170d667c80f60279b9855333e8ba1c87da80421233285fd6d597"), 
    	.binaryTarget(name: "libavformat", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.1/libavformat.zip", checksum: "d37215281f8e4c7a2b50e296fe65c638347ce0ccbcec847bb6416dba9292ce81"), 
    	.binaryTarget(name: "libswscale", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.1/libswscale.zip", checksum: "a4e8224c6e52b13757a2dfabcfc01a6a780a4114bcbf3e8bf449fea46ec96bc7"), 
    	.binaryTarget(name: "libavresample", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.1/libavresample.zip", checksum: "ccd179f6ec3cb72727afb9ec4164ec00f3c4da0b207ae9a810f610c37f41f4cf"), 
    	.binaryTarget(name: "libavutil", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.1/libavutil.zip", checksum: "4cecf7d739e8458e2737d62cf144c804cefc5b045eb8d0ccf26e449f5cb5e2aa"), 
    	.binaryTarget(name: "libavcodec", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.1/libavcodec.zip", checksum: "a0131cb248237c593c7c1b75ab3b01aab27e788452b0df8dad669487eecaaf9d"), 
    	.binaryTarget(name: "libffpyplayer", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.1/libffpyplayer.zip", checksum: "ad83ed20232bd4ed8f9dd5f4210aa6f43578e46cdab966c03ee8f03bf208afb1"), 
    	.binaryTarget(name: "libmatplotlib", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.1/libmatplotlib.zip", checksum: "9169ca1ebd96b288cb66e385b8ef614ad4be59162f0fc5585f20468876fcb4db"), 
    	.binaryTarget(name: "libfreetype", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.1/libfreetype.zip", checksum: "0fb9551d98e030829ba798ad6160e08a3efcdd705f61a14d059c7135a49c9835"), 
    	.binaryTarget(name: "libpillow", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.1/libpillow.zip", checksum: "a24f0b408b7952d743416195dcc907b4b003a8cc5a614376e1ea62b8cc33151b"), 
    	.binaryTarget(name: "libjpeg", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.1/libjpeg.zip", checksum: "39e7f54ab543d6d78c7979f0d40261e84c0dfd34567d07086b565b36eafa010f"), 
    ]
)