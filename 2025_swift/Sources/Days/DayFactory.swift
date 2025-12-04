public enum DayFactory {
  public static func solver(for day: Int) -> Day {
    switch day {
      case 1: return Day01()
      default: 
        fatalError("Day \(day) not implemented")
    }
  }
}