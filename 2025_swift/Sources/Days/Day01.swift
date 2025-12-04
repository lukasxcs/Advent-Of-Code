import Utilities

public struct Day01: Day {
  public let id = 1

  public init() {}

  private var rotations: [(dir: Character, amount: Int)] {
    let raw = InputLoader.load(day: id)
    let lines =
      raw
      .components(separatedBy: .newlines)
      .compactMap { line -> (Character, Int)? in
        let trimmed = line.trimmingCharacters(in: .whitespacesAndNewlines)
        guard !trimmed.isEmpty else { return nil }
        let first = trimmed.first!
        let numberString = trimmed.dropFirst().trimmingCharacters(in: .whitespacesAndNewlines)
        guard let amount = Int(numberString) else {
          print("Failed to parse line:", trimmed)
          return nil
        }
        return (first, amount)
      }
    return lines
  }

  public func part1() -> String {
    var dial = 50
    var zerosCount = 0

    for rotation in rotations {
      dial = rotation.dir == "L" ? (dial - rotation.amount) % 100 : (dial + rotation.amount) % 100

      if dial == 0 { zerosCount += 1 }
    }

    return "\(zerosCount)"
  }

  public func part2() -> String {
    var dial = 50
    var zerosCount = 0

    for rotation in rotations {
      for _ in 1...rotation.amount {
        dial = rotation.dir == "L" ? (dial - 1) % 100 : (dial + 1) % 100
        if dial == 0 { zerosCount+=1}
      }
    }

    return "\(zerosCount)"
  }
}
