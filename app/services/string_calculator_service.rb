class StringCalculatorService
  def self.add(numbers)
    return 0 if numbers.strip.empty?

    delimiter = /,|\n/
    if numbers.start_with?("//")
      parts = numbers.split("\n", 2)
      delimiter = Regexp.escape(parts.first[2])
      numbers = parts.last
    end

    nums = numbers.split(/#{delimiter}|,|\n/).map(&:to_i)

    negatives = nums.select { |n| n < 0 }
    raise "negative numbers not allowed #{negatives.join(',')}" if negatives.any?

    nums.sum
  end
end
