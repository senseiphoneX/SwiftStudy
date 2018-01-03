//: Playground - noun: a place where people can play

// p.008
let name = "那須原"
let msg = "こんにちは、" + name + "さん。"

var homework = "理科"
homework += "「夜空の観測」" // homework = "理科「夜空の観測」"

let specialKeys = "command = \u{2318}, option = \u{2325}"
print(specialKeys)

// p.009
let n = 8
let str = "\(n)の2乗は\(n * n)です。"

print(6, 2014, "林檎")
print(6, 2014, "林檎", separator: "; ")

// p.010
var a = [2, 5, 8, 11, 7]
var a2: [Int] = [2, 5, 8, 11, 7]

var s = [String]()
print(s.count) // 0

var s2: [String] = []
print(s2.count) // 0

var g = 1.2
var f = [g/2.0, g/3.0, g/4.0]
print(f)

// p.011
let digits = ["00", "01", "02", "03"]
print(digits[2]) // 02
print(digits.count) // 4

var nums = digits
nums[2] = "Two"
// digits[2] = "Two" // エラー
print(digits[2]) // 02
print(nums)

var roman = ["Ⅰ", "Ⅱ", "Ⅲ"]
roman.append("Ⅳ")
print(roman)
let m = roman + ["5", "6"]
print(m)
roman += ["Ⅴ", "Ⅵ"]
print(roman)
