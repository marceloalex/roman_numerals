describe('Convert numeral to roman', function () {

  describe('from 1 to 3', function () {

    it('converts 1 to I', function () {
      expect((1).toRoman()).toEqual('I');
    });

    it('converts 2 to II', function () {
      expect((2).toRoman()).toEqual('II');
    });

    it('converts 3 to III', function () {
      expect((3).toRoman()).toEqual('III');
    });

  });

  describe('from 4 to 8', function () {
    
    it('converts 4 to IV', function () {
      expect((4).toRoman()).toEqual('IV');
    });

    it('converts 5 to V', function () {
      expect((5).toRoman()).toEqual('V');
    });

    it('converts 8 to VIII', function () {
      expect((8).toRoman()).toEqual('VIII');
    });

  });

  describe('from 9 to 39', function () {

    it('converts 9 to IX', function () {
      expect((9).toRoman()).toEqual('IX');
    });

    it('converts 10 to X', function () {
      expect((10).toRoman()).toEqual('X');
    });

    it('converts 39 to XXXIX', function () {
      expect((39).toRoman()).toEqual('XXXIX');
    });

  });

  describe('from 40 to 89', function () {

    it('converts 40 to XL', function () {
      expect((40).toRoman()).toEqual('XL');
    });

    it('converts 50 to L', function () {
      expect((50).toRoman()).toEqual('L');
    });

    it('converts 89 to LXXXIX', function () {
      expect((89).toRoman()).toEqual('LXXXIX');
    });

  });

  describe('from 90 to 399', function () {

    it('converts 90 to XC', function () {
      expect((90).toRoman()).toEqual('XC');
    });

    it('converts 100 to C', function () {
      expect((100).toRoman()).toEqual('C');
    });

    it('converts 399 to CCCXCIX', function () {
      expect((399).toRoman()).toEqual('CCCXCIX');
    });

  });

  describe('from 400 to 899', function () {

    it('converts 400 to CD', function () {
      expect((400).toRoman()).toEqual('CD');
    });

    it('converts 500 to D', function () {
      expect((500).toRoman()).toEqual('D');
    });

    it('converts 899 to DCCCXCIX', function () {
      expect((899).toRoman()).toEqual('DCCCXCIX');
    });

  });

  describe('from 900 to 3999', function () {

    it('converts 900 to CM', function () {
      expect((900).toRoman()).toEqual('CM');
    });

    it('converts 1000 to M', function () {
      expect((1000).toRoman()).toEqual('M');
    });

    it('converts 3999 to MMMCMXCIX', function () {
      expect((3999).toRoman()).toEqual('MMMCMXCIX');
    });

  });

  describe('Numbers must be in range 1..3999', function () {

    it('converts 900 to CM', function () {
      expect( function () {
        (-1).toRoman()
      }).toThrow('Numeral has no roman representation');
    });

    it('converts 1000 to M', function () {
      expect( function () {
        (0).toRoman()
      }).toThrow('Numeral has no roman representation');
    });

    it('converts 3999 to MMMCMXCIX', function () {
      expect( function () {
        (4000).toRoman()
      }).toThrow('Numeral has no roman representation');
    });

  });

});