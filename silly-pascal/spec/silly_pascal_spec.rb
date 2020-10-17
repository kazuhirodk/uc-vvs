require 'spec_helper'

describe SillyPascal do
  describe '#is_valid?' do
    it 'must return false if size is greater than 6' do
      expect(SillyPascal.new.is_valid?('abc1234')).to be_falsey
    end

    it 'must return false if size is lower than 1' do
      expect(SillyPascal.new.is_valid?('')).to be_falsey
    end

    it 'must return false if first character is a number' do
      expect(SillyPascal.new.is_valid?('1abc')).to be_falsey
    end

    it 'must return false if has special characters' do
      expect(SillyPascal.new.is_valid?('ab*cd')).to be_falsey
      expect(SillyPascal.new.is_valid?('abc%12')).to be_falsey
    end

    it 'must return true if size is between 1 and 6, with first character a letter and valid characters' do
      expect(SillyPascal.new.is_valid?('a')).to be_truthy
      expect(SillyPascal.new.is_valid?('ab')).to be_truthy
      expect(SillyPascal.new.is_valid?('abc')).to be_truthy
      expect(SillyPascal.new.is_valid?('abc1')).to be_truthy
      expect(SillyPascal.new.is_valid?('abc12')).to be_truthy
      expect(SillyPascal.new.is_valid?('abc123')).to be_truthy
    end
  end
end
