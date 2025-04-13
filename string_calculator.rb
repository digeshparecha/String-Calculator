require 'pry'
class StringCalculator
  def add(input)

    input&.strip! # remove extra space.

    #return 0 if input is empty or nil
    return 0 if input.nil? || input.empty?

    sum = 0
    delimiter = "\n|,"

    # It will check if input has any custom delimiter if has any then it will set delimiter
    if input_delimiter = input.match(/(?<=\/\/)(.*?)(?=\n)/)
      delimiter = input_delimiter[1]
    end

    # sum every comma and \n seperated element from input
    input.split(/[?=#{delimiter}]/) do |el|
      sum += el.to_i
    end

    sum
  end
end
