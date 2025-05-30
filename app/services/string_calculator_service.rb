class StringCalculatorService
  def self.add(numbers)
    return 0 if numbers.strip.empty?
    numbers.to_i if numbers.match?(/^\d+$/)
  end
end
