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

  def part2
    sum = 0

    input.each do |line|
      digits = line.strip.chars.map(&:to_i)

      result = []
      remaining = 12
      start_index = 0

      while remaining.positive?
        max_index = digits.length - remaining
        max_digit, max_digit_index = digits[start_index..max_index].each_with_index.max_by { |d, _| d }

        result << max_digit

        start_index += max_digit_index + 1
        remaining -= 1
      end

      sum += result.join.to_i
    end

    sum
  end
end
