//: Playground - noun: a place where people can play

import UIKit

// Fig1-1 p.5
var age: Int = 18
var age2 = 18
age2 = 20

var width = 10.5, height = 9.25, kind = "Rect"
var pack: Int = 0, x, y:Int, ram, rem: Double

// Fig1-2 p.6
let name: String = "C. Alcott"
let age3 = 2014 - 1997

let meName = "E. Mably"; var myAge = 17

let i: Int = 10
var a: Double = Double(i)

let r: Double = 0.1
var f: Float = Float(r)

let w: Double = 0.5
let i2: Int = 10
let b = w * Double(i2)

var a2: Double = Double(i)
var j: Int = Int(a * 1.25)

//let i3 = Int8(100 * 9) // エラー
//var u = UInt(-1) // エラー

let b2: Int8 = 40, c: Int8 = 80
// let d = b2 * c // エラー

let u = UInt(10)
// var v = u - 11 // エラー

let f2 = Float(-3.125)
let i3 = Int(f2) // -3

var t: Double = 8
let s = t * 10

let m: UInt = 1000 // 符号なし整数
let n: Int8 = 64   // 符号あり8ビット整数
print(m == n)      // false
print(m > n)       // true

