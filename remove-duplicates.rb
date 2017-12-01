# Define the unique method that removes duplicates
def unique(integers)
  @trash = []
  @keep = []
  duplicates = {}
  
    integers.each do |i|
      if duplicates [i]
        @trash << i
      else
        @keep << i
      end
    end
end