class Image
  def initialize(data)
    @rows = data
  end

  def output_image
    @rows.each{|row| puts row.join}
  end

  def find_ones
    @one_pixel_index = []
    @rows.each_with_index do |row, row_index|
      row.each_with_index do |column, column_index|
        @one_pixel_index << [row_index, column_index] if column == 1
      end
    end
  end

  def blur
    @new_image = @rows.map
    @rows.each_with_index do |row, row_index|
      row.each_with_index do |column, column_index|
        @one_pixel_index.each_with_index do |one_row_index, one_column_index|
          if row_index == one_row_index && column_index == one_column_index
            @new_image[row_index][column_index - 1] = 1
            @new_image[row_index - 1][column_index] = 1
            @new_image[row_index + 1][column_index] = 1
            @new_image[row_index][column_index + 1] = 1
          end
        end
      end
    end
  end

  def output_blurred_image
    @new_image.each{|row| puts row.join}
  end
end

image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
  ])

image.output_blurred_image