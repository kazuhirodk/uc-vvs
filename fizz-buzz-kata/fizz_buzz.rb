class FizzBuzz
  def initialize
    @all_numbers = [*1..100]
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
