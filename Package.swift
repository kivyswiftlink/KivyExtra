
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
        		"FFMpeg"
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
        		"KiwiSolver"
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
    	.binaryTarget(name: "libkiwisolver", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.0/libkiwisolver.zip", checksum: "d1c0a98330981f7a55a249839ee928e359131d1cdceba1bc154886b3e75a189c"), 
    	.binaryTarget(name: "libavdevice", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.0/libavdevice.zip", checksum: "dc7acb4237fcf10fafd70beb70d99547ca7e9d7db49cce5dff9cc67907ed0c4b"), 
    	.binaryTarget(name: "libavfilter", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.0/libavfilter.zip", checksum: "7ef099cdc2b43c30f47889473b3b15434c696c6c458b9dd0ba2e0880b6a3d533"), 
    	.binaryTarget(name: "libswresample", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.0/libswresample.zip", checksum: "843b69f4a36a68b66e80afbc3bcd7f2fd8a7c3df4b4fa904e5926fafa8774060"), 
    	.binaryTarget(name: "libavformat", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.0/libavformat.zip", checksum: "90d681239e3cead9d1c66b48a5a4e3d57bbaf3aa2a8ef6becdb861d4ab81a483"), 
    	.binaryTarget(name: "libswscale", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.0/libswscale.zip", checksum: "b7dbf58840e88da28f6ccad2580152ee533c2374b6cf5bf181810fac04569fa9"), 
    	.binaryTarget(name: "libavresample", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.0/libavresample.zip", checksum: "7ecd9612c4da41fa4150cefe09c1d85374d98c942a8d7f37a21e35214eb3bf04"), 
    	.binaryTarget(name: "libavutil", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.0/libavutil.zip", checksum: "fe2cf5b3fdc64a7b49aa13d41ab153615b64a4c4a0f74721de213b92207b7ecd"), 
    	.binaryTarget(name: "libavcodec", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.0/libavcodec.zip", checksum: "baafe2b7399673cd19c5495f230dac85b93dcda62ba73cf5b4134fe06590a9c6"), 
    	.binaryTarget(name: "libffpyplayer", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.0/libffpyplayer.zip", checksum: "08402c22754629b8a6116e4522bdea5f5db8592227ded9b2ca36308f53208693"), 
    	.binaryTarget(name: "libmatplotlib", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.0/libmatplotlib.zip", checksum: "0d898ed2a4aac230d441c27e072702bbea6936d861b5b5a433dd22584ffc47d9"), 
    	.binaryTarget(name: "libfreetype", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.0/libfreetype.zip", checksum: "8e5c60f0d3fc882b6421ff74cb524a972b7c1e004a630081bd14e51cd8cae0c8"), 
    	.binaryTarget(name: "libpillow", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.0/libpillow.zip", checksum: "cc3ef4cda1a140a0e1c34ac42f39d1f4dc511f83d3c7b425c5505d62ead73226"), 
    	.binaryTarget(name: "libjpeg", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.0/libjpeg.zip", checksum: "68d3380008d8cd74af3ff80753a33624a63aa5f0bef3d7cbdbd197aa7a1d29ab"), 
    ]
)