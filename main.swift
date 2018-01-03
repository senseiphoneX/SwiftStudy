print("あなたの名前: ", terminator: "")

if let name = readLine() {
    let v = Int(name.utf16.reduce(UInt16(0), &+))
    print("\(name)さんと相性の良い旅団メンバーは、")
    for (elm, val) in analyzer(v) {
        print(" \(elm):\(val)pts", terminator: "")
    }
    print(" です。")
}
