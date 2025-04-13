class StringCalculator
  def add(input)

    input&.strip! # remove extra space.

    #return 0 if input is empty or nil
    return 0 if input.nil? || input.empty?

    sum = 0
    
    # sum every comma seperated element from input
    input.split(',').each do |el|
      sum += el.to_i
    end

    sum
  end
end
