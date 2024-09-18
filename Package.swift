
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
        		"libfreetype", 
        		"libpillow", 
        		"libjpeg", 
        	], 
        	resources: [
        	], 
        	linkerSettings: [
        	]
    	), 
    	.binaryTarget(name: "libkiwisolver", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.1/libkiwisolver.zip", checksum: "9801bfb520e45432512e710c0da00dc52dc37d8ab44531f88ce9e97c3e40f8ed"), 
    	.binaryTarget(name: "libavdevice", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.1/libavdevice.zip", checksum: "06ca48f9ab1d8349cc4ff37def63b29815029cf62686709aacb9fb51143f32fb"), 
    	.binaryTarget(name: "libavfilter", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.1/libavfilter.zip", checksum: "9f58636142875381d0342914169e6e629134666e7e51dd9b3f5de35f01d87e29"), 
    	.binaryTarget(name: "libswresample", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.1/libswresample.zip", checksum: "cf72c7080e3bfa7b2b8ba40f65d1a0003b314e874154d85301e6fd107d17064d"), 
    	.binaryTarget(name: "libavformat", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.1/libavformat.zip", checksum: "688e941b6df6cc2c977b540b27fdc3014cd82d29e295fd9795bdff6591f38cd2"), 
    	.binaryTarget(name: "libswscale", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.1/libswscale.zip", checksum: "504e09547a52400b09a680ee96233c6201e64cc4f605277a247105e08598b0ce"), 
    	.binaryTarget(name: "libavresample", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.1/libavresample.zip", checksum: "928ce9f9524ab2c39196983ca7ba6c10376fbf491ec0891e3de0d151a079e495"), 
    	.binaryTarget(name: "libavutil", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.1/libavutil.zip", checksum: "c9176871284a9fe70aff74e49c78ee877187316e4ba3c870e4ee3bada27e1e81"), 
    	.binaryTarget(name: "libavcodec", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.1/libavcodec.zip", checksum: "3b9d5f20f80af5b3eece24e73376fbc07309bbc7b82002579d0363ad29bdfe97"), 
    	.binaryTarget(name: "libffpyplayer", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.1/libffpyplayer.zip", checksum: "c7816f73de51be3d6a541934fd421c3b7cf58ad048edee68b31559bd18d97f2b"), 
    	.binaryTarget(name: "libmatplotlib", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.1/libmatplotlib.zip", checksum: "6cd36743336c8e6947755214fbed9a623f8951bc534a13c5661158a6af45cb74"), 
    	.binaryTarget(name: "libfreetype", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.1/libfreetype.zip", checksum: "ebd8d38ae609ba54714f57fcc6a7087c09d10ea0c161f422e4ba30487c6fb6e4"), 
    	.binaryTarget(name: "libpillow", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.1/libpillow.zip", checksum: "ba0a24ba2013c53eb31a48b6b0d4cd0da9b84949a546eecaa064c0dfcaee9fa8"), 
    	.binaryTarget(name: "libjpeg", url: "https://github.com/KivySwiftLink/KivyExtra/releases/download/311.0.1/libjpeg.zip", checksum: "4422a349b99fe183596f0b6dce62a1263150a82c28408e6e3b85ba4392d4370d"), 
    ]
)