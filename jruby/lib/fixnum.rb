require 'java'
$CLASSPATH << 'lib'

class Fixnum

  def to_roman
    roman_numerals = JavaUtilities.get_proxy_class('RomanNumerals')
    roman_numerals.to_roman(self)
  end

end