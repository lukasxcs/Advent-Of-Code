class Base
  attr_reader :input

  def initialize(day_number)
    @input = File.read("inputs/day%02d.txt" % day_number).lines.map(&:chomp)
  end

  def part1
    raise NotImplementedError
  end

  def part2
    raise NotImplementedError
  end
end