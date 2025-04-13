class NegativeNumberError < StandardError
  def initialize(numbers=[])
    message = 'negative numbers not allowed'
    message.concat(" #{numbers.join(',')}") unless numbers.empty?
    super(message)
  end
end