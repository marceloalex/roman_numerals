require 'roman_numerals'

describe "Convert numeral to roman" do

  it "Fixnum include RomanNumerals" do
    Fixnum.include?(RomanNumerals).should be true
    1.to_roman.should == RomanNumerals.to_roman(1)
  end

  context "1 to 3" do

    it "converts 1 to I" do
      1.to_roman.should == "I"
    end

    it "converts 2 to II" do
      2.to_roman.should == "II"
    end

    it "converts 3 to III" do
      3.to_roman.should == "III"
    end

  end

  context "4 to 8" do

    it "converts 4 to IV" do
      4.to_roman.should == "IV"
    end

    it "converts 5 to V" do
      5.to_roman.should == "V"
    end

    it "converts 8 to VIII" do
      8.to_roman.should == "VIII"
    end

  end

  context "9 to 39" do

    it "converts 9 to IX" do
      9.to_roman.should == "IX"
    end

    it "converts 10 to X" do
      10.to_roman.should == "X"
    end

    it "converts 39 to XXXIX" do
      39.to_roman.should == "XXXIX"
    end

  end

  context "40 to 89" do

    it "converts 40 to XL" do
      40.to_roman.should == "XL"
    end

    it "converts 50 to XL" do
      50.to_roman.should == "L"
    end

    it "converts 89 to LXIX" do
      89.to_roman.should == "LXXXIX"
    end

  end

  context "90 to 399" do
    
    it "converts 90 to XC" do
      90.to_roman.should == "XC"
    end

    it "converts 100 to C" do
      100.to_roman.should == "C"
    end

    it "converts 399 to CCCXCIX" do
      399.to_roman.should == "CCCXCIX"
    end

  end

  context "400 to 899" do

    it "converts 400 to CD" do
      400.to_roman.should == "CD"
    end

    it "converts 500 to D" do
      500.to_roman.should == "D"
    end

    it "converts 899 to DCCCXCIX" do
      899.to_roman.should == "DCCCXCIX"
    end

  end

  context "900 to 3999" do

    it "converts 900 to CM" do
      900.to_roman.should == "CM"
    end

    it "converts 1000 to M" do
      1000.to_roman.should == "M"
    end

    it "converts 3999 to MMMCMXCIX" do
      3999.to_roman.should == "MMMCMXCIX"
    end

  end

end