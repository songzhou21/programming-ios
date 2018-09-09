//
//  TransformView.swift
//  Views-Code
//
//  Created by songzhou on 2018/9/9.
//  Copyright © 2018年 songzhou. All rights reserved.
//

import UIKit

func transform_test() -> UIView {
    let v1 = UIView(frame: CGRect(x: 113, y: 111, width: 132, height: 194))
    v1.backgroundColor = UIColor(red: 1, green: 0.4, blue: 1, alpha: 1)
    let v2 = UIView(frame: v1.bounds.insetBy(dx: 10, dy: 10))
    v2.backgroundColor = UIColor(red: 0.5, green: 1, blue: 0, alpha: 1)
    
    v1.addSubview(v2)
//    v1.transform = CGAffineTransform(rotationAngle: 45 * .pi/180)
    print(v1.bounds)
    v1.transform = CGAffineTransform(scaleX: 1.8, y: 1)
    print(v1.bounds)
    
    return v1
}

func transform_test2() -> UIView {
    let v1 = UIView(frame: CGRect(x: 20, y: 111, width: 132, height: 194))
    v1.backgroundColor = UIColor(red: 1, green: 0.4, blue: 1, alpha: 1)
    let v2 = UIView(frame: v1.bounds)
    v2.backgroundColor = UIColor(red: 0.5, green: 1, blue: 0, alpha: 1)
    
    v1.addSubview(v2)
//    v2.transform = CGAffineTransform(translationX: 100, y: 0).rotated(by: 45 * .pi/180)
    v2.transform = CGAffineTransform(rotationAngle: 45 * .pi/180).translatedBy(x: 100, y: 0)

    return v1
}

func transform_test3() -> UIView {
    let v1 = UIView(frame: CGRect(x: 20, y: 111, width: 132, height: 194))
    v1.backgroundColor = UIColor(red: 1, green: 0.4, blue: 1, alpha: 1)
    let v2 = UIView(frame: v1.bounds)
    v2.backgroundColor = UIColor(red: 0.5, green: 1, blue: 0, alpha: 1)
    
    v1.addSubview(v2)
    let r = CGAffineTransform(rotationAngle: 45 * .pi/180)
    let t = CGAffineTransform(translationX: 100, y: 0)
    
    v2.transform = t.concatenating(r)
    v2.transform = r.inverted().concatenating(v2.transform)

    return v1
}
func transform_test4() -> UIView {
    let v1 = UIView(frame: CGRect(x: 20, y: 111, width: 132, height: 194))
    v1.backgroundColor = UIColor(red: 1, green: 0.4, blue: 1, alpha: 1)
    let v2 = UIView(frame: v1.bounds.insetBy(dx: 10, dy: 10))
    v2.backgroundColor = UIColor(red: 0.5, green: 1, blue: 0, alpha: 1)
    
    v1.addSubview(v2)

    v1.transform = CGAffineTransform(a: 1, b: 0, c: -0.2, d: 1, tx: 0, ty: 0)
    return v1
}
