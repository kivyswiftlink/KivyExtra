
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
    	.binaryTarget(name: "libkiwisolver", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.0/libkiwisolver.zip", checksum: "ff5119789ca70eb66150b19050e200a3f4eee87f383cc791960a758fa04cd932"), 
    	.binaryTarget(name: "libavdevice", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.0/libavdevice.zip", checksum: "0ce890dd469142c90e550c170b038a7987edf82d99fc133df778662f4201c046"), 
    	.binaryTarget(name: "libavfilter", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.0/libavfilter.zip", checksum: "27063eca87cfec800f06c5a825f248ea774f7d09053d7833e90397edf3779d0c"), 
    	.binaryTarget(name: "libswresample", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.0/libswresample.zip", checksum: "381287d8564cc1cd96c364f2aa30ae792df62701364d8f448c58ff54b69c91ec"), 
    	.binaryTarget(name: "libavformat", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.0/libavformat.zip", checksum: "4e951665121775649e66aa56241d1db04869678d489604cd7e97e593cea40072"), 
    	.binaryTarget(name: "libswscale", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.0/libswscale.zip", checksum: "deb2133ab80e897d77750577743e922e1e0cd082f3d5f1b8cdc6284120841572"), 
    	.binaryTarget(name: "libavresample", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.0/libavresample.zip", checksum: "22faa41ac91066876ce5b7faf793e8d518a995f1758717c994ce456d5fa37c8a"), 
    	.binaryTarget(name: "libavutil", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.0/libavutil.zip", checksum: "f353d81e83055cdb8db7fbbe46d47ec43f173580b59ec9ebd0ac2734d5eb862e"), 
    	.binaryTarget(name: "libavcodec", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.0/libavcodec.zip", checksum: "3f107743b1124631c9f4f82c52a4892bb85ba1bb3becd5b682f58419ad0d29f2"), 
    	.binaryTarget(name: "libffpyplayer", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.0/libffpyplayer.zip", checksum: "04015a3f856ff084c1560d11208111f8ec9d6bb600aa7b5a7c31476580e6e5b2"), 
    	.binaryTarget(name: "libmatplotlib", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.0/libmatplotlib.zip", checksum: "02ed4a001e7206abd9a450340c9c0d59d74ce7ebd0d3f1b4c174ce2493a4d728"), 
    	.binaryTarget(name: "libfreetype", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.0/libfreetype.zip", checksum: "383013503c79af66e2c21e8c074cfd34671da08cc1218717075f480c698eddc0"), 
    	.binaryTarget(name: "libpillow", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.0/libpillow.zip", checksum: "482234842c6bf0a1117bf3287d0774987fdfc00ce9efe978a288c0f9339324f7"), 
    	.binaryTarget(name: "libjpeg", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.0/libjpeg.zip", checksum: "e37775de8fe38f26fc7665e18c92da68641b88577d7d622b5f32f97ad0c6fd2e"), 
    ]
)