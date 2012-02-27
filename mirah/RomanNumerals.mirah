import java.util.ArrayList

class RomanValue
  def initialize(roman_value:string, int_value:int)
    @roman_value = roman_value
    @int_value   = int_value
  end
  
  def roman_value
    @roman_value
  end

  def int_value
    @int_value
  end
end

class RomanNumerals
  # Please never use class variables in your
  # ruby code. They have many issues. I'm using
  # it in mirah because Mirah as a JVM language 
  # targets the JVM’s type system and JVM bytecode,
  # so it lacks when you use ruby syntax for constants.
  @@romans = ArrayList.new()
  @@romans.add(RomanValue.new("M", 1000))
  @@romans.add(RomanValue.new("CM", 900))
  @@romans.add(RomanValue.new("D",  500))
  @@romans.add(RomanValue.new("CD", 400))
  @@romans.add(RomanValue.new("C",  100))
  @@romans.add(RomanValue.new("XC",  90))
  @@romans.add(RomanValue.new("L",   50))
  @@romans.add(RomanValue.new("XL",  40))
  @@romans.add(RomanValue.new("X",   10))
  @@romans.add(RomanValue.new("IX",   9))
  @@romans.add(RomanValue.new("V",    5))
  @@romans.add(RomanValue.new("IV",   4))
  @@romans.add(RomanValue.new("I",    1))

  class << self
    def romans
      @@romans
    end

    def to_roman(numeral:int)
      roman = ""
      romans.each do |r|
        equiv = RomanValue(r)
        while numeral >= equiv.int_value do
          numeral -= equiv.int_value
          roman   += equiv.roman_value
        end
      end

      roman
    end
  end
end

# Tests:

def assert(test:boolean, msg:string)
  msg ||= "Failed assertion, no message given."
  if not test
    raise Exception, msg
  end
  true
end

assert RomanNumerals.to_roman(1).equals("I"),            "Converts 1    to I"
assert RomanNumerals.to_roman(2).equals("II"),           "Converts 2    to II"
assert RomanNumerals.to_roman(3).equals("III"),          "Converts 3    to III"
assert RomanNumerals.to_roman(4).equals("IV"),           "Converts 4    to IV"
assert RomanNumerals.to_roman(5).equals("V"),            "Converts 5    to V"
assert RomanNumerals.to_roman(8).equals("VIII"),         "Converts 8    to VIII"
assert RomanNumerals.to_roman(9).equals("IX"),           "Converts 9    to IX"
assert RomanNumerals.to_roman(10).equals("X"),           "Converts 10   to X"
assert RomanNumerals.to_roman(39).equals("XXXIX"),       "Converts 39   to XXXIX"
assert RomanNumerals.to_roman(40).equals("XL"),          "Converts 40   to XL"
assert RomanNumerals.to_roman(50).equals("L"),           "Converts 50   to L"
assert RomanNumerals.to_roman(89).equals("LXXXIX"),      "Converts 89   to LXXXIX"
assert RomanNumerals.to_roman(90).equals("XC"),          "Converts 90   to XC"
assert RomanNumerals.to_roman(100).equals("C"),          "Converts 100  to C"
assert RomanNumerals.to_roman(399).equals("CCCXCIX"),    "Converts 399  to CCCXCIX"
assert RomanNumerals.to_roman(400).equals("CD"),         "Converts 400  to CD"
assert RomanNumerals.to_roman(500).equals("D"),          "Converts 500  to D"
assert RomanNumerals.to_roman(899).equals("DCCCXCIX"),   "Converts 899  to DCCCXCIX"
assert RomanNumerals.to_roman(900).equals("CM"),         "Converts 900  to CM"
assert RomanNumerals.to_roman(1000).equals("M"),         "Converts 1000 to M"
assert RomanNumerals.to_roman(3999).equals("MMMCMXCIX"), "Converts 3999 to MMMCMXCIX"