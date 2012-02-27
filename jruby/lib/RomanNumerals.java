public class RomanNumerals {

  final static RomanValue[] ROMAN_VALUE_TABLE = {
    new RomanValue(1000, "M"),
    new RomanValue( 900, "CM"),
    new RomanValue( 500, "D"),
    new RomanValue( 400, "CD"),
    new RomanValue( 100, "C"),
    new RomanValue(  90, "XC"),
    new RomanValue(  50, "L"),
    new RomanValue(  40, "XL"),
    new RomanValue(  10, "X"),
    new RomanValue(   9, "IX"),
    new RomanValue(   5, "V"),
    new RomanValue(   4, "IV"),
    new RomanValue(   1, "I")
  };

  public static String toRoman(int numeral) {
    if (numeral >= 4000  || numeral < 1) {
      throw new NumberFormatException("Numbers must be in range 1-3999");
    }
    
    StringBuffer roman = new StringBuffer(10);
    
    for (RomanValue equiv : ROMAN_VALUE_TABLE) {
      while (numeral >= equiv.intValue) {
        numeral -= equiv.intValue;
        roman.append(equiv.romanValue);
      }
    }

    return roman.toString();
  }

  private static class RomanValue {
    int    intValue;
    String romanValue;

    RomanValue(int intValue, String romanValue) {
      this.intValue   = intValue;
      this.romanValue = romanValue;
    }
  }

}