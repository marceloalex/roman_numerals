describe('Convert numeral to roman', function () {

  describe('from 1 to 3', function () {

    it('converts 1 to I', function () {
      expect(romanNumerals(1)).toEqual('I');
    });

    it('converts 2 to II', function () {
      expect(romanNumerals(2)).toEqual('II');
    });

    it('converts 3 to III', function () {
      expect(romanNumerals(3)).toEqual('III');
    });

  });

  describe('from 4 to 8', function () {
    
    it('converts 4 to IV', function () {
      expect(romanNumerals(4)).toEqual('IV');
    });

    it('converts 5 to V', function () {
      expect(romanNumerals(5)).toEqual('V');
    });

    it('converts 8 to VIII', function () {
      expect(romanNumerals(8)).toEqual('VIII');
    });

  });

  describe('from 9 to 39', function () {

    it('converts 9 to IX', function () {
      expect(romanNumerals(9)).toEqual('IX');
    });

    it('converts 10 to X', function () {
      expect(romanNumerals(10)).toEqual('X');
    });

    it('converts 39 to XXXIX', function () {
      expect(romanNumerals(39)).toEqual('XXXIX');
    });

  });

  describe('from 40 to 89', function () {

    it('converts 40 to XL', function () {
      expect(romanNumerals(40)).toEqual('XL');
    });

    it('converts 50 to L', function () {
      expect(romanNumerals(50)).toEqual('L');
    });

    it('converts 89 to LXXXIX', function () {
      expect(romanNumerals(89)).toEqual('LXXXIX');
    });

  });

  describe('from 90 to 399', function () {

    it('converts 90 to XC', function () {
      expect(romanNumerals(90)).toEqual('XC');
    });

    it('converts 100 to C', function () {
      expect(romanNumerals(100)).toEqual('C');
    });

    it('converts 399 to CCCXCIX', function () {
      expect(romanNumerals(399)).toEqual('CCCXCIX');
    });

  });

  describe('from 400 to 899', function () {

    it('converts 400 to CD', function () {
      expect(romanNumerals(400)).toEqual('CD');
    });

    it('converts 500 to D', function () {
      expect(romanNumerals(500)).toEqual('D');
    });

    it('converts 899 to DCCCXCIX', function () {
      expect(romanNumerals(899)).toEqual('DCCCXCIX');
    });

  });

  describe('from 900 to 3999', function () {

    it('converts 900 to CM', function () {
      expect(romanNumerals(900)).toEqual('CM');
    });

    it('converts 1000 to M', function () {
      expect(romanNumerals(1000)).toEqual('M');
    });

    it('converts 3999 to MMMCMXCIX', function () {
      expect(romanNumerals(3999)).toEqual('MMMCMXCIX');
    });

  });

  describe('Numbers must be in range 1..3999', function () {

    it('converts 900 to CM', function () {
      expect( function () {
        romanNumerals(-1)
      }).toThrow('Numeral has no roman representation');
    });

    it('converts 1000 to M', function () {
      expect( function () {
        romanNumerals(0)
      }).toThrow('Numeral has no roman representation');
    });

    it('converts 3999 to MMMCMXCIX', function () {
      expect( function () {
        romanNumerals(4000)
      }).toThrow('Numeral has no roman representation');
    });

  });

});