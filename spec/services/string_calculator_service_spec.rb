require 'rails_helper'

RSpec.describe StringCalculatorService do
  describe '.add' do
    it 'returns 0 for an empty string' do
      expect(described_class.add("")).to eq(0)
    end

    it 'returns the number for a single number' do
      expect(described_class.add("4")).to eq(4)
    end

    it 'returns the sum for two numbers' do
      expect(described_class.add("1,5")).to eq(6)
    end

    it 'supports newlines as delimiters' do
      expect(described_class.add("1\n2,3")).to eq(6)
    end

    it 'supports custom delimiters' do
      expect(described_class.add("//;\n1;2")).to eq(3)
    end

    it 'raises error on negative numbers' do
      expect {
        described_class.add("1,-2,-5")
      }.to raise_error("negative numbers not allowed -2,-5")
    end

    it "ignores double quotes around numbers" do
      expect(described_class.add('"1","2","3"')).to eq(6)
      expect(described_class.add('1,"2",3')).to eq(6)
      expect(described_class.add('""1""')).to eq(1)
    end

    it "ignores empty tokens" do
      expect(described_class.add("1,,2,,3")).to eq(6)
    end

    it "handles spaces around numbers" do
      expect(described_class.add(" 1 , 2 , 3 ")).to eq(6)
    end
  end
end
