class FizzBuzz
  def initialize
    @all_numbers = [
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
    ]
  end

  def print_numbers
    return @all_numbers
  end

  def is_multiple_of_three?(number)
    is_multiple(number, 3)
  end

  def is_multiple_of_five?(number)
    is_multiple(number, 5)
  end

  def is_multiple(number, multiple)
    number % multiple == 0
  end

  def print_fizz_numbers
    fizz_array = []

    @all_numbers.each do |number|
      fizz_array << (is_multiple_of_three?(number) ? 'Fizz' : number)
    end

    fizz_array
  end

  def print_buzz_numbers
    buzz_array = []

    @all_numbers.each do |number|
      buzz_array << (is_multiple_of_five?(number) ? 'Buzz' : number)
    end

    buzz_array
  end

  def print_fizz_buzz_numbers
    fizz_buzz_array = []

    @all_numbers.each do |number|
      fizz_buzz_array << get_fizz_buzz(number)
    end

    fizz_buzz_array
  end

  def get_fizz_buzz(number)
    return 'Invalid Number' if !is_valid_range?(number)

    if is_multiple_of_five?(number) && is_multiple_of_three?(number)
        return 'FizzBuzz'
      elsif is_multiple_of_three?(number)
        return 'Fizz'
      elsif is_multiple_of_five?(number)
        return 'Buzz'
      else
        return number
      end
  end

  def is_valid_range?(number)
    (number > 0 && number < 101)
  end
end
