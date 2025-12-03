require_relative "../base"

class Day01 < Base
  def part1
    dial = 50
    zero_count = 0

    input.each do |line|
      direction = line[0]
      amount = line[1..].to_i

      dial = direction == "L" ? (dial - amount) % 100 : (dial + amount) % 100
      zero_count += 1 if dial == 0
    end

    zero_count
  end

  def part2
    "Hello Day 1 part 2"
  end
end