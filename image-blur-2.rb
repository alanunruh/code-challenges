require 'pry'
class Image
  attr_reader :one_pixel_indices

  def initialize(data)
    @rows = data
  end

  def find_one_coordinates
    @one_pixel_indices = []
    @rows.each_with_index do |row, row_index|
      row.each_with_index do |column, column_index|
        if column == 1
          @one_pixel_indices << [row_index, column_index]
        end
      end
    end
  end

  def blur_above(x,y)
    @rows[x-1][y] = 1 unless on_upper_edge?(x)
  end

  def blur_below(x,y)
    @rows[x+1][y] = 1 unless on_bottom_edge?(x)
  end

  def blur_left(x,y)
    @rows[x][y-1] = 1 unless on_left_edge?(y)
  end

  def blur_right(x,y)
    @rows[x][y+1] = 1 unless on_right_edge?(y)
  end

  def on_left_edge?(y)
    y == 0
  end

  def on_right_edge?(y)
    y == @rows.first.size - 1
  end

  def on_upper_edge?(x)
    x == 0
  end

  def on_bottom_edge?(x)
    x == @rows.size - 1
  end

  def blur
    @one_pixel_indices.each do |row, column|
      blur_left(row, column)

      blur_right(row, column)

      blur_above(row, column)

      blur_below(row, column)
    end
  end

  def output_image
    @rows.each{|row| puts row.join}
  end
end

image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])

puts "here's the original image:"
image.output_image

puts "here's the blurred image:"
image.find_one_coordinates
image.blur
image.output_image