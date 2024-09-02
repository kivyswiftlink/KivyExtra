
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
    	.binaryTarget(name: "libkiwisolver", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.2/libkiwisolver.zip", checksum: "9c1485c1e1896f9bb430e44dad0421f5e5e8cbb785dc3871136101324900a8f7"), 
    	.binaryTarget(name: "libavdevice", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.2/libavdevice.zip", checksum: "1e0354a4f9774a7c58a92cbe639dae4a6bf6ecb4a1430463a6d640b5387b4035"), 
    	.binaryTarget(name: "libavfilter", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.2/libavfilter.zip", checksum: "11a5fa1a497d354fb17c150fd19ccb003e115be12c4cb404fe06392739401dee"), 
    	.binaryTarget(name: "libswresample", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.2/libswresample.zip", checksum: "03dcd99a82c22ed73b7923672676c6680a1b70c70c7ad5f5b8567c3eafc802ca"), 
    	.binaryTarget(name: "libavformat", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.2/libavformat.zip", checksum: "5cf8e47148a1721811618b66b712a4aa4aa696f051931f5bdef00431d8972ed8"), 
    	.binaryTarget(name: "libswscale", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.2/libswscale.zip", checksum: "610fa8dd0b6adb6c8b8cc4733610a86e63c85d01ff88527c74b922e026bc73df"), 
    	.binaryTarget(name: "libavresample", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.2/libavresample.zip", checksum: "be7fc05778193dc86dbf032d38d67d26daa66fe6fbd3cc7e66a6edc7c96ed708"), 
    	.binaryTarget(name: "libavutil", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.2/libavutil.zip", checksum: "cda286e96a24ded9b99512df196d2f953ef641f494dff9b065af4718b512f78d"), 
    	.binaryTarget(name: "libavcodec", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.2/libavcodec.zip", checksum: "f2709341ad4f599ef39c8b5adf9289bc492698f83288270b07166863d08b895b"), 
    	.binaryTarget(name: "libffpyplayer", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.2/libffpyplayer.zip", checksum: "4f8e7637238685b822f5c7adedaef8d941d659c1564d22c368b07fded632919b"), 
    	.binaryTarget(name: "libmatplotlib", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.2/libmatplotlib.zip", checksum: "35988de50e8623c33b9565cf0e54e819cabcb12e7afeea0023024395d36d60fe"), 
    	.binaryTarget(name: "libfreetype", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.2/libfreetype.zip", checksum: "dbe3234c49c8daa4a1f12adbcc706e56f74fa3b03312cb8d631bdbe534513071"), 
    	.binaryTarget(name: "libpillow", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.2/libpillow.zip", checksum: "4006cf9022bfd68c54a872fa6f25ec06e11adb09a6c3f0af036ff6718937cdc4"), 
    	.binaryTarget(name: "libjpeg", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.2/libjpeg.zip", checksum: "d496941f44fd497f607ddfa0c3d9c357054e376184a72c8a45425ba186fb3414"), 
    ]
)