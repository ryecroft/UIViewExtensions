//
//  UIViewExtensionsTests.swift
//  UIViewExtensionsTests
//
//  Created by Stephen Horne on 28/11/17.
//  Copyright © 2017 Rockfax. All rights reserved.
//

import XCTest
@testable import UIViewExtensions

class UIViewExtensionsTests: XCTestCase {
  
  override func setUp() {
    super.setUp()
  }
  
  override func tearDown() {
    super.tearDown()
  }
  
  
  var baseFrame = CGRect(x: 0, y: 0, width: 50, height: 100)
  
  var testFloatValue = CGFloat(24)
  
  var baseView : UIView {
    get {
      return UIView(frame: baseFrame)
    }
  }
  
  
  func testLeftEdge() {
    let view = baseView
    XCTAssert(view.frame.minX == view.leftEdge)
  }
  
  
  func testSetLeftEdge() {
    let view = baseView
    view.leftEdge = testFloatValue
    XCTAssert(view.frame.origin.x == testFloatValue, "Left edge is not correct")
    XCTAssert(view.frame.size.width == baseFrame.size.width - testFloatValue, "New width is not correct")
  }
  
  
  func testRightEdge() {
    let view = baseView
    XCTAssert(view.frame.maxX == view.rightEdge)
  }
  
  
  func testSetRightEdge() {
    let view = baseView
    view.rightEdge = testFloatValue
    XCTAssert(view.frame.maxX == testFloatValue, "Right edge is not correct")
    XCTAssert(view.frame.size.width == (baseFrame.size.width + (testFloatValue - baseFrame.maxX)), "New width is not correct: \(view)")
  }
  
  
  func testLeft() {
    let view = baseView
    XCTAssert(view.frame.minX == view.left)
  }
  
  
  func testSetLeft() {
    let view = baseView
    view.left = testFloatValue
    XCTAssert(view.frame.origin.x == testFloatValue, "Left edge is not correct")
  }
  
  
  func testRight() {
    let view = baseView
    XCTAssert(view.frame.maxX == view.right)
  }
  
  
  func testSetRight() {
    let view = baseView
    view.right = testFloatValue
    XCTAssert(view.frame.maxX == testFloatValue, "Right edge is not correct")
    XCTAssert(view.frame.width == baseFrame.size.width, "Width has been altered incorrectly")
  }
  
  
  func testY() {
    let view = baseView
    XCTAssert(view.frame.origin.y == view.y && view.y == baseFrame.origin.y)
  }
  
  
  func testSetY() {
    let view = baseView
    view.y = testFloatValue
    XCTAssert(view.frame.origin.y == testFloatValue)
  }
  
  
  func testX() {
    let view = baseView
    XCTAssert(view.frame.origin.x == view.x && view.x == baseFrame.origin.x)
  }
  
  
  func testSetX() {
    let view = baseView
    view.x = testFloatValue
    XCTAssert(view.frame.origin.x == testFloatValue)
  }
  
  
  func testHeight() {
    let view = baseView
    XCTAssert(view.frame.size.height == view.height && view.height == baseFrame.size.height)
  }
  
  
  func testSetHeight() {
    let view = baseView
    view.height = testFloatValue
    XCTAssert(view.frame.size.height == testFloatValue)
  }
  
  
  func testWidth() {
    let view = baseView
    XCTAssert(view.frame.size.width == view.width && view.width == baseFrame.size.width)
  }
  
  
  func testSetWidth() {
    let view = baseView
    view.width = testFloatValue
    XCTAssert(view.frame.size.width == testFloatValue)
  }
  
  
}
