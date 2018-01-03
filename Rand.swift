public struct RandGenerator {
    private var rnd: UInt
    init(seed: Int) {
        rnd = UInt(seed)
    }
    
    mutating func random() -> Int {
        rnd = (rnd &* 10777) &+ 13577
        return Int(rnd & 0xffff)
    }
    
    mutating func xrand() -> Int {
        let n = random() & 0x07
        return random() >> n
    }
}
