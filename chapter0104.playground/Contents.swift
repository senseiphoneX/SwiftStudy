//: Playground - noun: a place where people can play

// p.016 1.2 制御構文
let obj = "object"
let name = "name"
var count = 100
var selector = ""

let target = obj; selector = name; count -= 1

// p.017
let a = 10
let b: Int
if a >= 0 {
    b = a
} else {
    b = -a
}
print(b) // 10

let c = a < 0 ? a : -a
print(c) // -10

// p.018
let val = 10032
var i = 1, mask = 2

while mask <= val {
    mask <<= 1
    i += 1
    // print(mask, i)
}

// p.019
var n = 42
repeat {
    print("\(n)", terminator:" ")
    if n % 2 == 0 {
        n /= 2
    } else {
        n = n * 3 + 1
    }
} while n > 1
print(n)

// p.020
for i in 1..<5 { print(i) } // 1 2 3 4
for k in 1...5 { print(k) } // 1 2 3 4 5

for i in 1 ..< 10 {
    var line = ""
    for j in 1 ..< 10 {
        let n = i * j
        if n < 10 { line += " " }
        line += " \(n)"
    }
    print(line)
}

for i in 1 ..< 64 where i % 3 != 0 && i % 8 != 0 {
    print(i, terminator: " ")
}
print()

// p.021
let name2 = "koko"
let group = [ "jonah", "visha", "koko", "valmet", "tanya" ]

for s in group {
    if name2 == s {
        print("\(s)が見つかりました")
        break
    }
}

// p.022
var n2 = 4

switch n2 {
case 0:
    print("none")
// case 1: // エラー
case 2, 3:
    print("a fet")
case 4, 5:
    print("some")
case 6:
    break
default:
    print("several")
}

// p.023
let 追試下限 = 45
var score = 85

switch score {
case 追試下限 ..< 75:
    print("追試験")
case 90...100:
    print("秀")
case 80..<90:
    print("優")
case 70..<80:
    print("良")
case 60..<70:
    print("可")
default:
    print("不可")
}

let days = 31
let firstDay = 2

var w = 0

while w < firstDay {
    print("   ", terminator: "")
    w += 1
}

var d = 1

loop: while true {
    while w < 7 {
        let pad = d < 10 ? " " : "" // 日付が1桁の場合の詰め物
        print(pad + " \(d)", terminator:"")
        w += 1
        d += 1
        if d > days {
            print()
            break loop
        }
    }
    print()
    w = 0
}

// p.025
let year = 1980

leap: if year % 4 == 0 {
    if year % 100 == 0 {
        if year % 400 == 0 {
            print("\(year)年は400で割り切れるのでうるう年です。")
            break leap
        }
        print("\(year)年は100で割り切れないのでうるう年ではありません。")
        break leap
    }
    print("\(year)年は4で割り切れるのでうるう年です。")
} else {
    print("\(year)年は4で割り切れないのでうるう年ではありません。")
}

var a2 = 3
var b2 = 1
var c2 = 5

if a2 >= 0 {
    b2 += a2
    do {
        let t = a2
        a2 = c2
        c2 = t
    }
}
print(a2, b2, c2)

let blood = "B"

search: do {
    for t in ["A", "B", "O", "AB"] {
        if blood == t { break search }
    }
    print("見つかりませんでした")
}

var e = 0.0, t = 1.0

for i in 1 ... 20 {
    e += t
    t /= Double(i)
}
print("e=\(e)")
