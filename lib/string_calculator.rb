require 'negative_number_error'

class StringCalculator
  def add(input)

    input&.strip! # remove extra space.

    #return 0 if input is empty or nil
    return 0 if input.nil? || input.empty?

    check_negative_number(input)

    delimiter = "\n|,"

    # It will check if input has any custom delimiter if has any then it will set delimiter
    if input_delimiter = input.match(/(?<=\/\/)(.*?)(?=\n)/)
      delimiter = input_delimiter[1]
      input = input.split(/\n/)[1]
    end

    # convert all numbers to integer
    numbers = input.split(/[?=#{delimiter}]/).map(&:to_i).select{|num| num <= 1000 }

    # sum every comma and \n seperated element from input
    delimiter == '*' ? numbers.inject(:*)  : numbers.sum
  end

  private

  def check_negative_number(input)
    negative_numbers = input.scan(/-\d+/)
    if negative_numbers.size > 1
      raise NegativeNumberError, negative_numbers
    elsif negative_numbers.size == 1
      raise NegativeNumberError
    end
  end
end
