class StringCalculatorService
  def self.add(numbers)
    return 0 if numbers.strip.empty?

    numbers.gsub('\n', "\n")
    numbers.split(/,|\n/).map(&:to_i).sum
  end
end
