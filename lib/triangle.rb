require 'pry'

class Triangle
  attr_accessor :length, :width, :height
  # write code here
  def initialize(length, width, height)
    @length = length
    @width = width
    @height = height
  end

  def kind
    if length <= 0 || width <= 0 || height <= 0
      raise TriangleError
    end
    if length >= (width + height) || width >= (height + length) || height >= (length + width)
      raise TriangleError
    end
    if length == width && width == height && height == length
      return :equilateral
    elsif length == height || length == width || height == width
      return :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
  end
end
# new_triangle = Triangle.new(10, 10, 20)
# binding.pry
