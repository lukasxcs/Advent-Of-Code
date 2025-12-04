import XCTest
import Days

final class Day01Tests: XCTestCase {
  func testPart1Example() {
    let day = Day01()
    XCTAssertEqual(day.part1(), "1129")
  }

  func testPart2Example() {
    let day = Day01()
    XCTAssertEqual(day.part2(), "6638")
  }
}