class StringCalculatorService
  def self.add(numbers)
    return 0 if numbers.strip.empty?

    delimiter = /,|\n/
    if numbers.start_with?("//")
      parts = numbers.split("\n", 2)
      delimiter = Regexp.escape(parts.first[2])
      numbers = parts.last
    end

    tokens = numbers.split(delimiter)

    clean_numbers = tokens.map do |token|
      token.strip.gsub(/\"/, "")
    end.reject(&:empty?)

    negatives = clean_numbers.map(&:to_i).select { |n| n < 0 }
    if negatives.any?
      raise "negative numbers not allowed #{negatives.join(',')}"
    end

    clean_numbers.map(&:to_i).sum
  end
end
