// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

// See: https://github.com/modswift/CApache/blob/master/Package%40swift-5.swift
let package = Package(
  name: "CLibUV",

  products: [
      .library(name: "CLibUV", targets: ["CLibUV"]),
  ],
  targets: [
      .systemLibrary(name: "CLibUV",
          pkgConfig: "libuv",
          providers: [
              .brew(["libuv"]),
              .apt(["libuv"]),
          ]
      )
  ]
)
