require 'spec_helper'

describe FizzBuzz do
  describe '#print_numbers' do
    it 'must return a array with numbers from 1 to 100' do
      expect(FizzBuzz.new.print_numbers).to eq([
        1, 2, 3, 4, 5, 6, 7, 8, 9, 10,
        11, 12, 13, 14, 15, 16, 17, 18, 19, 20,
        21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
        31, 32, 33, 34, 35, 36, 37, 38, 39, 40,
        41, 42, 43, 44, 45, 46, 47, 48, 49, 50,
        51, 52, 53, 54, 55, 56, 57, 58, 59, 60,
        61, 62, 63, 64, 65, 66, 67, 68, 69, 70,
        71, 72, 73, 74, 75, 76, 77, 78, 79, 80,
        81, 82, 83, 84, 85, 86, 87, 88, 89, 90,
        91, 92, 93, 94, 95, 96, 97, 98, 99, 100
      ])
    end
  end

  describe '#is_multiple_of_three?' do
    it 'must return true if is multiple of 3' do
      random_number = rand(100) * 3
      expect(FizzBuzz.new.is_multiple_of_three?(random_number)).to be_truthy
    end

    it 'must return false if is not multiple of 3' do
      expect(FizzBuzz.new.is_multiple_of_three?(5)).to be_falsey
    end
  end

  describe '#is_multiple_of_five?' do
    it 'must return true if is multiple of 5' do
      random_number = rand(100) * 5
      expect(FizzBuzz.new.is_multiple_of_five?(random_number)).to be_truthy
    end

    it 'must return false if is not multiple of 5' do
      expect(FizzBuzz.new.is_multiple_of_five?(13)).to be_falsey
    end
  end

  describe '#is_multiple' do
    it 'must return true if multiple is correct' do
      random_multiple = rand(50)
      random_number = rand(100) * random_multiple

      expect(FizzBuzz.new.is_multiple(random_number, random_multiple)).to be_truthy
    end

    it 'must return false if multiple is incorrect' do
      expect(FizzBuzz.new.is_multiple(5,3)).to be_falsey
    end
  end

  describe '#print_fizz_numbers' do
    it 'must return array with fizz on multiples of 3' do
      expect(FizzBuzz.new.print_fizz_numbers).to eq([
        1, 2, "Fizz", 4, 5, "Fizz", 7, 8, "Fizz", 10,
        11, "Fizz", 13, 14, "Fizz", 16, 17, "Fizz", 19, 20,
        "Fizz", 22, 23, "Fizz", 25, 26, "Fizz", 28, 29, "Fizz",
        31, 32, "Fizz", 34, 35, "Fizz", 37, 38, "Fizz", 40,
        41, "Fizz", 43, 44, "Fizz", 46, 47, "Fizz", 49, 50,
        "Fizz", 52, 53, "Fizz", 55, 56, "Fizz", 58, 59, "Fizz",
        61, 62, "Fizz", 64, 65, "Fizz", 67, 68, "Fizz", 70,
        71, "Fizz", 73, 74, "Fizz", 76, 77, "Fizz", 79, 80,
        "Fizz", 82, 83, "Fizz", 85, 86, "Fizz", 88, 89, "Fizz",
        91, 92, "Fizz", 94, 95, "Fizz", 97, 98, "Fizz", 100
      ])
    end
  end

  describe '#print_buzz_numbers' do
    it 'must return array with buzz on multiples of 5' do
      expect(FizzBuzz.new.print_buzz_numbers).to eq([
        1, 2, 3, 4, "Buzz", 6, 7, 8, 9, "Buzz",
        11, 12, 13, 14, "Buzz", 16, 17, 18, 19, "Buzz",
        21, 22, 23, 24, "Buzz", 26, 27, 28, 29, "Buzz",
        31, 32, 33, 34, "Buzz", 36, 37, 38, 39, "Buzz",
        41, 42, 43, 44, "Buzz", 46, 47, 48, 49, "Buzz",
        51, 52, 53, 54, "Buzz", 56, 57, 58, 59, "Buzz",
        61, 62, 63, 64, "Buzz", 66, 67, 68, 69, "Buzz",
        71, 72, 73, 74, "Buzz", 76, 77, 78, 79, "Buzz",
        81, 82, 83, 84, "Buzz", 86, 87, 88, 89, "Buzz",
        91, 92, 93, 94, "Buzz", 96, 97, 98, 99, "Buzz"
      ])
    end
  end

  describe '#print_fizz_buzz_numbers' do
    it 'must return array with fizz, buzz or fizzbuzz correctly' do
      expect(FizzBuzz.new.print_fizz_buzz_numbers).to eq([
        1, 2, "Fizz", 4, "Buzz", "Fizz", 7, 8, "Fizz", "Buzz", 11, "Fizz", 13, 14, "FizzBuzz",
        16, 17, "Fizz", 19, "Buzz", "Fizz", 22, 23, "Fizz", "Buzz", 26, "Fizz", 28, 29, "FizzBuzz",
        31, 32, "Fizz", 34, "Buzz", "Fizz", 37, 38, "Fizz", "Buzz", 41, "Fizz", 43, 44, "FizzBuzz",
        46, 47, "Fizz", 49, "Buzz", "Fizz", 52, 53, "Fizz", "Buzz", 56, "Fizz", 58, 59, "FizzBuzz",
        61, 62, "Fizz", 64, "Buzz", "Fizz", 67, 68, "Fizz", "Buzz", 71, "Fizz", 73, 74, "FizzBuzz",
        76, 77, "Fizz", 79, "Buzz", "Fizz", 82, 83, "Fizz", "Buzz", 86, "Fizz", 88, 89, "FizzBuzz",
        91, 92, "Fizz", 94, "Buzz", "Fizz", 97, 98, "Fizz", "Buzz"
      ])
    end
  end

  describe '#get_fizz_buzz' do
    it 'must return Fizz if is only multiple of 3' do
      expect(FizzBuzz.new.get_fizz_buzz(12)).to eq('Fizz')
    end

    it 'must return Buzz if is only multiple of 5' do
      expect(FizzBuzz.new.get_fizz_buzz(20)).to eq('Buzz')
    end

    it 'must return FizzBuzz if is both multiple of 3 and 5' do
      expect(FizzBuzz.new.get_fizz_buzz(15)).to eq('FizzBuzz')
    end

    it 'must return the original number if is not multiple of 3 or five' do
      expect(FizzBuzz.new.get_fizz_buzz(11)).to eq(11)
    end

    it 'must return Invalid Number message if not in range' do
      expect(FizzBuzz.new.get_fizz_buzz(102)).to eq('Invalid Number')
    end
  end

  describe '#is_valid_range?' do
    it 'must return true if provided number is between 1 and 100' do
      expect(FizzBuzz.new.is_valid_range?(20)).to be_truthy
    end

    it 'must return false if provided number is negative' do
      expect(FizzBuzz.new.is_valid_range?(-2)).to be_falsey
    end

    it 'must return false if provided number is greather than 100' do
      expect(FizzBuzz.new.is_valid_range?(101)).to be_falsey
    end
  end
end
