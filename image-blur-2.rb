class Image
  def initialize(data)
    @rows = data
  end

  def output_image
    @rows.each{|row| puts row.join}
  end

  def one_coordinates
    one_pixel_indices = []
    @rows.each_with_index do |row, row_index|
      row.each_with_index do |column, column_index|
        if column == 1
          one_pixel_indices << [row_index, column_index]
        end
      end
    end
  end

  def blur
    one_pixel_indices = self.one_coordinates
    @new_image = Marshal.load( Marshal.dump(@rows) )    
    one_pixel_indices.each do |row, column|
      @new_image[row][column - 1] = 1 if column != 0
      @new_image[row - 1][column] = 1 if column != @new_image[0].length - 1
      @new_image[row + 1][column] = 1 if row != 0
      @new_image[row][column + 1] = 1 if row != @new_image.length - 1
    end
    @new_image.each{|new| puts new.join}
  end
end  

image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
  ])

image.output_image
puts "\n"
image.blur