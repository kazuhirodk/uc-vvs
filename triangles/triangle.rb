class Triangle
  def initialize(a, b, c)
    @all_sides = [a, b, c]
  end

  def is_valid_triangle?
    is_all_sides_positive? && side_size_is_valid?
  end

  def class_type
    return 'Invalid Triangle' if !is_valid_triangle?

    unique_sides_length = @all_sides.uniq.count

    if unique_sides_length == 1
      return 'equilateral'
    elsif unique_sides_length == 2
      return 'isosceles'
    else
      return 'scalene'
    end
  end

  private

  def is_all_sides_positive?
    @all_sides.all? { |side| side > 0 }
  end

  def side_size_is_valid?
    sorted_sides = @all_sides.sort

    (sorted_sides[0] + sorted_sides[1]) > sorted_sides[2]
  end
end
