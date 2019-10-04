class Image
  attr_accessor :image
  def initialize (image)
    @image = image

  end

  def print_image
    image.map(&:join)
  end

  def data
    image
  end

  def blur
    locations = []
    @image.each_with_index do |row, row_index|
      row.each_with_index do |pixel, pixel_index|
        if pixel == 1
          locations << [row_index, pixel_index]
        end
      end
    end

    locations.each do |row_index, pixel_index|
      @image[row_index][pixel_index - 1] = 1 if pixel_index > 0 
      @image[row_index][pixel_index + 1] = 1 if pixel_index + 1 < @image[0].length
      @image[row_index - 1][pixel_index] = 1 if row_index > 0 
      @image[row_index + 1][pixel_index] = 1 if row_index + 1 < @image.length
    end
    self
  end
end


