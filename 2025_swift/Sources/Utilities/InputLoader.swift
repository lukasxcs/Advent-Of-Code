import Foundation

public enum InputLoader {
  public static func load(day: Int, example: Bool = false) -> String {
    let path = URL(fileURLWithPath: FileManager.default.currentDirectoryPath)
      .appendingPathComponent("Inputs")
      .appendingPathComponent("day\(day).txt")
  
    return (try? String(contentsOf:path, encoding: .utf8)) ?? ""
  }
}