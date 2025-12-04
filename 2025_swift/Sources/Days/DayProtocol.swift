public protocol Day {
  var id: Int { get }
  func part1() -> String
  func part2() -> String
}

public extension Day {
  func run() {
    print("===== Day \(id) =====")
    print("Part 1: \(part1())")
    print("Part 2: \(part2())")
    print("=====================")
  }
}