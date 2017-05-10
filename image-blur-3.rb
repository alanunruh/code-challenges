require 'pry'
class Image

  attr_reader :one_pixel_indices

  def initialize(data)
    @rows = data
    find_one_coordinates
  end

  def output_image
    @rows.each{|row| puts row.join}
  end

  def find_one_coordinates
    @one_pixel_indices = []
    @rows.each_with_index do |row, row_index|
      row.each_with_index do |column, column_index|
        if column == 1
          @one_pixel_indices << [column_index, row_index]
        end
      end
    end
  end

  def blur_above(x,y)
    @rows[y-1][x] = 1 unless on_upper_edge?(y)
  end

  def blur_below(x,y)
    @rows[y+1][x] = 1 unless on_bottom_edge?(y)
  end

  def blur_left(x,y)
    @rows[y][x-1] = 1 unless on_left_edge?(x)
  end

  def blur_right(x,y)
    @rows[y][x+1] = 1 unless on_right_edge?(x)
  end

  def on_left_edge?(x)
    x == 0
  end

  def on_right_edge?(x)
    x == @rows.first.size - 1
  end

  def on_upper_edge?(y)
    y == 0
  end

  def on_bottom_edge?(y)
    y == @rows.size - 1
  end

  def blur
    @one_pixel_indices.each do |row, column|
      blur_left(row, column)
      blur_right(row, column)
      blur_above(row, column)
      blur_below(row, column)
    end
  end

  def manhattan_distance(distance)
    distance.times do |x|
      find_one_coordinates
      blur
    end
  end

  def output_manhattan_distance(distance)
    manhattan_distance
    output_image
    puts "done"
  end
end

image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])

image.output_image
image.output_manhattan_distance(2)