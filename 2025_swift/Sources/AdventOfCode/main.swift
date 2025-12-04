import Days

@main
struct AdventRunnder {
  static func main() {
    let day: Int = CommandLine.arguments.dropFirst().first.flatMap { Int($0) } ?? 1

    let solver = DayFactory.solver(for: day)
    solver.run()
  }
}