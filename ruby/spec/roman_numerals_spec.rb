require 'roman_numerals'

describe "Convert numeral to roman" do

  context "1 to 3" do

    it "converts 1 to I" do
      RomanNumerals.to_roman(1).should == "I"
    end

    it "converts 2 to II" do
      RomanNumerals.to_roman(2).should == "II"
    end

    it "converts 3 to III" do
      RomanNumerals.to_roman(3).should == "III"
    end

  end

  context "4 to 8" do

    it "converts 4 to IV" do
      RomanNumerals.to_roman(4).should == "IV"
    end

    it "converts 5 to V" do
      RomanNumerals.to_roman(5).should == "V"
    end

    it "converts 8 to VIII" do
      RomanNumerals.to_roman(8).should == "VIII"
    end

  end

  context "9 to 39" do

    it "converts 9 to IX" do
      RomanNumerals.to_roman(9).should == "IX"
    end

    it "converts 10 to X" do
      RomanNumerals.to_roman(10).should == "X"
    end

    it "converts 39 to XXXIX" do
      RomanNumerals.to_roman(39).should == "XXXIX"
    end

  end

  context "40 to 89" do

    it "converts 40 to XL" do
      RomanNumerals.to_roman(40).should == "XL"
    end

    it "converts 50 to L" do
      RomanNumerals.to_roman(50).should == "L"
    end

    it "converts 89 to LXXXIX" do
      RomanNumerals.to_roman(89).should == "LXXXIX"
    end

  end

  context "90 to 399" do
    
    it "converts 90 to XC" do
      RomanNumerals.to_roman(90).should == "XC"
    end

    it "converts 100 to C" do
      RomanNumerals.to_roman(100).should == "C"
    end

    it "converts 399 to CCCXCIX" do
      RomanNumerals.to_roman(399).should == "CCCXCIX"
    end

  end

  context "400 to 899" do

    it "converts 400 to CD" do
      RomanNumerals.to_roman(400).should == "CD"
    end

    it "converts 500 to D" do
      RomanNumerals.to_roman(500).should == "D"
    end

    it "converts 899 to DCCCXCIX" do
      RomanNumerals.to_roman(899).should == "DCCCXCIX"
    end

  end

  context "900 to 3999" do

    it "converts 900 to CM" do
      RomanNumerals.to_roman(900).should == "CM"
    end

    it "converts 1000 to M" do
      RomanNumerals.to_roman(1000).should == "M"
    end

    it "converts 3999 to MMMCMXCIX" do
      RomanNumerals.to_roman(3999).should == "MMMCMXCIX"
    end

  end

  context "Numbers must be in range 1..3999" do
    romanNumeralException = "Has no roman representation"

    it "raises error when transforming 0 to roman" do
      expect { RomanNumerals.to_roman(0) }.to raise_error romanNumeralException
    end

    it "raises error when transforming -1 to roman" do
      expect { RomanNumerals.to_roman(-1) }.to raise_error romanNumeralException
    end

    it "raises error when transforming -1 to roman" do
      expect { RomanNumerals.to_roman(4000) }.to raise_error romanNumeralException
    end
  end

end