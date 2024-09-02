
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
    	.binaryTarget(name: "libkiwisolver", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.2/libkiwisolver.zip", checksum: "138644b8615057036d42809569e744feb501254a917ba9e3081aa10f0499fde0"), 
    	.binaryTarget(name: "libavdevice", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.2/libavdevice.zip", checksum: "ba33c7642cd80ff73107928b4b3b92b80e570284d68618091e83db0cea136e15"), 
    	.binaryTarget(name: "libavfilter", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.2/libavfilter.zip", checksum: "d9e0ca2283087772dc059f666ca0494027d8c829cb1613adca03282ab52c56a3"), 
    	.binaryTarget(name: "libswresample", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.2/libswresample.zip", checksum: "d71116e463556c5ef408e16b7c8ad0049cb5c5925a4ef64d3c82c5759856427c"), 
    	.binaryTarget(name: "libavformat", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.2/libavformat.zip", checksum: "1574a273d265c1677e82de722892f39012f705462ad7cfdd126164d4917a3483"), 
    	.binaryTarget(name: "libswscale", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.2/libswscale.zip", checksum: "3be941d1759369e3cc6201c934081558d5f5f03948621e2845b4e505d5318e95"), 
    	.binaryTarget(name: "libavresample", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.2/libavresample.zip", checksum: "56465d6ae3823dc9d84708add3b79a81f105ae7c5e5c1c4189f25b0374030724"), 
    	.binaryTarget(name: "libavutil", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.2/libavutil.zip", checksum: "00e9cbe4cd4903d0df4c6728a5c795a47415b3bf1da466bfe3193cd6237d892a"), 
    	.binaryTarget(name: "libavcodec", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.2/libavcodec.zip", checksum: "57843bc755dcb977eca667090fec72a84bf94afc5c98098f8e72093230721d8a"), 
    	.binaryTarget(name: "libffpyplayer", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.2/libffpyplayer.zip", checksum: "5379e7f656d2d9f0ff4a68be7d8c506e121e2faaf068dfe869e68f15a94ba700"), 
    	.binaryTarget(name: "libmatplotlib", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.2/libmatplotlib.zip", checksum: "b56caeb304c8a96b6a8cea8771e370dda60d713a0f1d1921ab60b49026a65afc"), 
    	.binaryTarget(name: "libfreetype", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.2/libfreetype.zip", checksum: "ebbe7fb1311cfcb9cc22b3da493ef0235fe1ef612d8f7f20861815bdf7b41390"), 
    	.binaryTarget(name: "libpillow", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.2/libpillow.zip", checksum: "bd0a0f6d9bc97a42fe2654337618fdfebeea1c10520e8bf30382b62c3e49acf4"), 
    	.binaryTarget(name: "libjpeg", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.2/libjpeg.zip", checksum: "e319d5e58d1c9c130bb89cbb1852a7665ec9537b3caa0dc0a6b14bf0b6372844"), 
    ]
)