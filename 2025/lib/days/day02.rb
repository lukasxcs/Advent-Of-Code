# frozen_string_literal: true

require_relative '../base'

# Solution to Day 2
class Day02 < Base
  def part1
    ranges = input[0].strip.split(',').map { |r| r.split('-').map(&:to_i) }

    max_value = ranges.map(&:last).max
    doubled_values = []
    half_value = 1

    loop do
      half_string = half_value.to_s
      full_int = (half_string + half_string).to_i

      break if full_int > max_value

      doubled_values << full_int
      half_value += 1
    end

    doubled_values.sort!

    sum = 0

    ranges.each do |id1, id2|
      doubled_values.each do |doubled_value|
        break if doubled_value > id2

        sum += doubled_value if doubled_value >= id1
      end
    end

    sum
  end

  def part2; end
end
