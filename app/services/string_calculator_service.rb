class StringCalculatorService
  def self.add(numbers)
    return 0 if numbers.strip.empty?

    if numbers.start_with?("//")
      delimiter, numbers = numbers.split("\n", 2)
      custom_delim = delimiter[2]
      return numbers.split(custom_delim).map(&:to_i).sum
    end

    numbers.split(/,|\n/).map(&:to_i).sum
  end
end
