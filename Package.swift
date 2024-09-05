
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
    	.binaryTarget(name: "libkiwisolver", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.2/libkiwisolver.zip", checksum: "348dece23e516d5109b5aa9a6d31434b16e7013b97e2b964128c8ed39b944bb1"), 
    	.binaryTarget(name: "libavdevice", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.2/libavdevice.zip", checksum: "40703b153aad977ed5db3081faae23747e8edd6c6b800dfcf6d97e125be05ef8"), 
    	.binaryTarget(name: "libavfilter", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.2/libavfilter.zip", checksum: "a20cdcb01fbef53b8409743628379562db06d42c130f3d60cd9f1fd1a5ae95a0"), 
    	.binaryTarget(name: "libswresample", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.2/libswresample.zip", checksum: "17fed7593ef6df6625f18b104835bcc72af5219472c754e08c711e869c3d1efb"), 
    	.binaryTarget(name: "libavformat", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.2/libavformat.zip", checksum: "967294b30715dd43b01ab9da704bb7b69a1fb87a72b179adc5c6fbee1e37ae73"), 
    	.binaryTarget(name: "libswscale", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.2/libswscale.zip", checksum: "f24cbd802da8e26fcceed5c7edb8a73f2f9ff9bbc74dc7ce368d0d75028ecb8a"), 
    	.binaryTarget(name: "libavresample", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.2/libavresample.zip", checksum: "5cbaeba933fef6ef6606592a3a03d0117654e73a9fae5400f9efdc5e29901912"), 
    	.binaryTarget(name: "libavutil", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.2/libavutil.zip", checksum: "5100824bafcc64a3141ce989a45427bafbb8cd17c2e002a12a937a2ad43cc105"), 
    	.binaryTarget(name: "libavcodec", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.2/libavcodec.zip", checksum: "44a48e939174870cb322e250b46b87a3bdd4b8b77e36792e8510fa248aa6d450"), 
    	.binaryTarget(name: "libffpyplayer", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.2/libffpyplayer.zip", checksum: "3cf51f1e759eb9553504da0eacae91c7d2c58393171f9fd97ef9970f11957671"), 
    	.binaryTarget(name: "libmatplotlib", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.2/libmatplotlib.zip", checksum: "3e4534a5b71442eada4abbe864f0b5988b0ed97db85d8b939781d458d24db559"), 
    	.binaryTarget(name: "libfreetype", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.2/libfreetype.zip", checksum: "448f11be8558dcefe4968142e79406b93c47cf8eaf48239164935c2f00111ab5"), 
    	.binaryTarget(name: "libpillow", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.2/libpillow.zip", checksum: "ded20c1c5d30dc5a1f7c76d885c4d3ed5944ee9b129d13d5f54b9fbc7b6539cb"), 
    	.binaryTarget(name: "libjpeg", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.2/libjpeg.zip", checksum: "4c6d600a050fbf2d21ca08d4327e98fad7e9a57cd209d2f1a530b68bccbd278b"), 
    ]
)