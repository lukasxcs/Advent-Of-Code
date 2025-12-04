# frozen_string_literal: true

require_relative '../base'

# Solution to Day 4
class Day04 < Base
  attr_accessor :array

  def initialize(day_number)
    super(day_number)
    @array = []
    File.foreach('inputs/day04.txt') do |line|
      @array << line.chomp.split('')
    end
  end

  def part1
    counter = 0

    array.length.times do |i|
      array[i].length.times do |j|
        next unless array[i][j] == '@'

        counter += 1 if neighbour_paper_count(i, j) < 4
      end
    end

    counter
  end

  def part2
    total_removed = 0

    loop do
      removable = []

      array.each_with_index do |row, i|
        row.each_with_index do |cell, j|
          next unless cell == '@'

          removable << [i, j] if neighbour_paper_count(i, j) < 4
        end
      end

      break if removable.empty?

      removable.each do |(i, j)|
        array[i][j] = '.'
      end

      total_removed += removable.length
    end

    total_removed
  end

  def neighbour_paper_count(i, j)
    dirs = [-1, 0, 1].product([-1, 0, 1]) - [[0, 0]]

    dirs.count do |di, dj|
      row = i + di
      col = j + dj
      check_bounds(row, col) && array[row][col] == '@'
    end
  end

  def check_bounds(row, col)
    row.between?(0, array.length - 1) && col.between?(0, array[0].length - 1)
  end
end
