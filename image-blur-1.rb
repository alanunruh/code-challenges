#1st Attempt
class Image
  def initialize
    @pixels = []
    @row_1 = [0, 0, 0, 0]
      @pixels << @row_1
    @row_2 = [0, 1, 0, 0]
      @pixels << @row_2
    @row_3 = [0, 0, 0, 1]
      @pixels << @row_3
    @row_4 = [0, 0, 0, 0]
      @pixels << @row_4
  end

  def output_image
    puts @row_1.join, @row_2.join, @row_3.join, @row_4.join
  end
end

image = Image.new

image.output_image


#2nd Attempt
class Image
  def initialize(data)
    @rows = data
  end

  def output_image
    @rows.each do |row|
      puts row.join
    end
  end
end

image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
  ])

image.output_image