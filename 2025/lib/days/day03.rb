# frozen_string_literal: true

require_relative '../base'

# Solution to Day 3
class Day03 < Base
  def part1
    sum = 0

    input.each do |line|
      digits = line.strip.chars.map(&:to_i)

      max_value = 0

      digits.each_with_index do |first_digit, i|
        digits[(i + 1)..].each do |second_digit|
          value = first_digit * 10 + second_digit
          max_value = value if value > max_value
        end
      end

      sum += max_value
    end

    sum
  end

  def part2; end
end
