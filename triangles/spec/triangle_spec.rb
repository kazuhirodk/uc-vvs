require 'spec_helper'

describe Triangle do
  describe '#is_valid_triangle?' do
    it 'must return false if some side is negative' do
      expect(Triangle.new(-1, 2, 3).is_valid_triangle?).to be_falsey
    end

    it 'must return false if some side is zero' do
      expect(Triangle.new(0, 3, 5).is_valid_triangle?).to be_falsey
    end

    it 'must return false if the sum of two sides is lower or equal other side size' do
      expect(Triangle.new(3, 2, 6).is_valid_triangle?).to be_falsey
      expect(Triangle.new(3, 2, 5).is_valid_triangle?).to be_falsey
    end

    it 'must return true if is a valid triangle based on params' do
      expect(Triangle.new(3, 2, 4).is_valid_triangle?).to be_truthy
    end
  end

  describe '#class_type' do
    it 'must return Invalid Triangle if params come invalid' do
      expect(Triangle.new(3, 2, 6).class_type).to eq('Invalid Triangle')
    end

    it 'must return equilateral if all sides are the same' do
      expect(Triangle.new(3, 3, 3).class_type).to eq('equilateral')
    end

    it 'must return isosceles if two sides are the same' do
      expect(Triangle.new(3, 3, 5).class_type).to eq('isosceles')
    end

    it 'must return scalene if all sides are different' do
      expect(Triangle.new(3, 5, 7).class_type).to eq('scalene')
    end
  end
end
