# frozen_string_literal: true

# !/usr/bin/env ruby
require_relative 'lib/base'

day_number = ARGV[0]&.to_i
abort 'Usage: ruby runner.rb <day_number>' unless day_number

day_file = format('lib/days/day%02d.rb', day_number)
require_relative day_file

dyn_class = Object.const_get(format('Day%02d', day_number))
day = dyn_class.new(day_number)

puts "=== Day #{day_number} ==="
puts "Part 1: #{day.part1}"
puts "Part 2: #{day.part2}"
