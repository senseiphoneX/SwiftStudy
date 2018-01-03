func analyzer(_ t: Int) -> [(String, Int)] {
    let elems = ["クロロ", "ノブナガ", "フェイタン", "フィンクス", "カルト", "フランクリン", "シャルナーク", "マチ", "シズク", "パクノダ", "コルトピ", "ウボォーギン", "ボノレノフ"]
    
    var rnd = RandGenerator(seed: t) // 乱数の初期化
    var score = [Int]()
    
    for _ in 0 ..< elems.count {
        score.append(rnd.xrand())
    }
    
    let tops = zip(elems, score).sorted{ $0.1 > $1.1 }.prefix(5)
    let total = Double(tops.reduce(0){ $0 + $1.1 })
    return tops.map{ ($0.0, Int(Double($0.1 * 100) / total + 0.5)) }
}
