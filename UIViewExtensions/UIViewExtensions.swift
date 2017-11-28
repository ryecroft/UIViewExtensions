//
//  UIViewExtensions.swift
//  UIViewExtensions
//
//  Created by Stephen Horne on 28/11/17.
//  Copyright © 2017 Rockfax. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
  
  private func PIXEL_INTEGRAL(pointValue: CGFloat) -> CGFloat {
    let SCREEN_SCALE = UIScreen.main.scale
    return (round(pointValue * SCREEN_SCALE) / SCREEN_SCALE)
  }
  
  
  
  open var x : CGFloat {
    get {
      return frame.origin.x
    }
    set {
      var r: CGRect = frame
      r.origin.x = PIXEL_INTEGRAL(pointValue:newValue)
      frame = r
    }
  }
  
  
  
  open var y : CGFloat {
    get {
      return frame.origin.y
    }
    set {
      var r: CGRect = frame
      r.origin.y = PIXEL_INTEGRAL(pointValue:newValue)
      frame = r
    }
  }
  
  
  
  open var width : CGFloat {
    get {
      return frame.size.width
    }
    set {
      var r: CGRect = frame
      r.size.width = PIXEL_INTEGRAL(pointValue:newValue)
      frame = r
    }
  }
  
  
  
  open var height : CGFloat {
    get {
      return frame.size.height
    }
    set {
      var r: CGRect = frame
      r.size.height = PIXEL_INTEGRAL(pointValue:newValue)
      frame = r
    }
  }
  
  
  
  open var origin : CGPoint {
    get {
      return frame.origin
    }
    set {
      var r: CGRect = frame
      r.origin = newValue
      frame = r
    }
  }
  
  
  
  open var size : CGSize {
    get {
      return frame.size
    }
    set {
      var r: CGRect = frame
      r.size = newValue
      frame = r
    }
  }
  
  
  
  open var right : CGFloat {
    get {
      return frame.maxX
    }
    set {
      x = newValue - width
    }
  }
  
  
  
  open var left : CGFloat {
    get {
      return x
    }
    set {
      x = newValue
    }
  }
  
  
  
  open var rightEdge : CGFloat {
    get {
      return right
    }
    set {
      assert(newValue >= x, "rightEdge value must be origin.x")
      let f = frame
      let currentRight = f.maxX
      let diff = newValue - currentRight
      width += diff 
    }
  }
  
  
  
  open var leftEdge : CGFloat {
    get {
      return left
    }
    set {
      assert(newValue <= x+width, "rightEdge value must be origin.x")
      let currentWidth = width
      x = newValue
      width = currentWidth  - newValue
    }
  }

  
  open var centerX : CGFloat {
    get {
      return frame.midX
    }
    set {
      center = CGPoint(x: PIXEL_INTEGRAL(pointValue: newValue), y: y) 
    }
  }
  
  
  open var centerY : CGFloat {
    get {
      return frame.midY
    }
    set {
      center = CGPoint(x: x, y: PIXEL_INTEGRAL(pointValue: newValue)) 
    }
  }
  
  
  public var midX : CGFloat {
    get {
      return width / CGFloat(2)
    }
  }
  
  
  public var midY : CGFloat {
    get {
      return height / CGFloat(2)
    }
  }
  
  //  func setCenterX(_ centerX: CGFloat) {
  //    center = CGPoint(x: PIXEL_INTEGRAL(centerX), y: center.y)
  //  }
  //  
  //  func setCenterY(_ centerY: CGFloat) {
  //    center = CGPoint(x: center.x, y: PIXEL_INTEGRAL(centerY))
  //  }
  
//  func moveBottomEdge(_ edge: CGFloat) {
//    let f: CGRect = frame
//    f.size.height = edge - y()
//    frame = f
//  }
//  
//  func moveTopEdge(_ edge: CGFloat) {
//    let bottom: CGFloat = self.bottom()
//    let f: CGRect = frame
//    top() = edge
//    f.size.height += bottom - edge
//    frame = f
//  }
//  
//  func setBottom(_ bottom: CGFloat) {
//    y() = bottom - height()
//  }
//  
//  func setLeft(_ `left`: CGFloat) {
//    x() = `left`
//  }
//  
//  func setTop(_ top: CGFloat) {
//    y() = top
//  }
//  

//  
//  func setBoundsX(_ boundsX: CGFloat) {
//    bounds = CGRect(x: PIXEL_INTEGRAL(boundsX), y: boundsY(), width: boundsWidth(), height: boundsHeight())
//  }
//  
//  func setBoundsY(_ boundsY: CGFloat) {
//    bounds = CGRect(x: boundsX(), y: PIXEL_INTEGRAL(boundsY), width: boundsWidth(), height: boundsHeight())
//  }
//  
//  func setBoundsWidth(_ boundsWidth: CGFloat) {
//    bounds = CGRect(x: boundsX(), y: boundsY(), width: PIXEL_INTEGRAL(boundsWidth), height: boundsHeight())
//  }
//  
//  func setBoundsHeight(_ boundsHeight: CGFloat) {
//    bounds = CGRect(x: boundsX(), y: boundsY(), width: boundsWidth(), height: PIXEL_INTEGRAL(boundsHeight))
//  }
//  
//  // Getters
//  func x() -> CGFloat {
//    return frame.origin.x
//  }
//  
//  func y() -> CGFloat {
//    return frame.origin.y
//  }
//  
//  func width() -> CGFloat {
//    return frame.size.width
//  }
//  
//  func height() -> CGFloat {
//    return frame.size.height
//  }
//  
//  func origin() -> CGPoint {
//    return CGPoint(x: x(), y: y())
//  }
//  
//  func midPoint() -> CGPoint {
//    return CGPoint(x: width() / 2.0, y: height() / 2.0)
//  }
//  
//  func midX() -> CGFloat {
//    return width() / 2.0
//  }
//  
//  func midY() -> CGFloat {
//    return height() / 2.0
//  }
//  
//  func size() -> CGSize {
//    return CGSize(width: width(), height: height())
//  }
//  
//  func right() -> CGFloat {
//    return frame.origin.x + frame.size.width
//  }
//  
//  func bottom() -> CGFloat {
//    return frame.origin.y + frame.size.height
//  }
//  
//  func left() -> CGFloat {
//    return x()
//  }
//  
//  func top() -> CGFloat {
//    return y()
//  }
//  
//  
//  func centerX() -> CGFloat {
//    return center.x
//  }
//  
//  func centerY() -> CGFloat {
//    return center.y
//  }
//  
//  func boundsX() -> CGFloat {
//    return bounds.origin.x
//  }
//  
//  func boundsY() -> CGFloat {
//    return bounds.origin.y
//  }
//  
//  func boundsWidth() -> CGFloat {
//    return bounds.size.width
//  }
//  
//  func boundsHeight() -> CGFloat {
//    return bounds.size.height
//  }
//  
//  // Methods
//  func centerToParent() {
//    if superview {
//      let size: CGSize = superview.bounds.size
//      center = CGPoint(x: size.width / 2.0, y: size.height / 2.0)
//    }
//  }
//  
//  func setRightOrigin(_ newOrigin: CGPoint) {
//    let frm: CGRect = frame
//    let width: CGFloat = frm.size.width
//    frm.origin.x = newOrigin.x - width
//    frame = frm
//  }
//  
//  func rightOrigin() -> CGPoint {
//    let frm: CGRect = frame
//    let width: CGFloat = frm.size.width
//    return CGPoint
//    do {
//      frm.origin.x + width, frm.origin.y
//    }
//  }
//  
//  var bottomLeft: CGPoint {
//    return CGPoint
//    do {
//      left, bottom
//    }
//  }
//  
//  var topLeft: CGPoint {
//    return CGPoint
//    do {
//      left, top
//    }
//  }
//  
//  var bottomRight: CGPoint {
//    return CGPoint
//    do {
//      right, bottom
//    }
//  }
//  
//  var topRight: CGPoint {
//    return CGPoint
//    do {
//      right, top
//    }
//  }
//  
//  func setBottomLeft(_ bottomLeft: CGPoint) {
//    left = bottomLeft.x
//    bottom = bottomLeft.y
//  }
//  
//  func setBottomRight(_ bottomRight: CGPoint) {
//    right = bottomRight.x
//    bottom = bottomRight.y
//  }
//  
//  var topLeft: ATSPoint {
//    left = topLeft.x
//    top = topLeft.y
//  }
//  
//  func setTopRight(_ topRight: CGPoint) {
//    right = topRight.x
//    top = topRight.y
//  }
//  
//  func setMaskByRoundingCorners(_ corners: UIRectCorner, radius: CGFloat) {
//    setMaskByRoundingCorners(corners, of: bounds, radius: radius)
//  }
//  
//  func setMaskByRoundingCorners(_ corners: UIRectCorner, of rect: CGRect, radius: CGFloat) {
//    let rounded = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
//    let shape = CAShapeLayer()
//    shape.path = rounded.cgPath
//    layer.mask = shape
//  }
//  
//  func makeFrameIntegral() {
//    frame = frame.integral()
}

