var romanNumerals = function(numeral) {
  if (numeral <= 0 || numeral >= 4000 ) {
    throw {
      name:    'Error',
      message: 'Numeral has no roman representation'
    }
  }

  var romans = {
     "M": 1000,
    "CM":  900,
     "D":  500,
    "CD":  400,
     "C":  100,
    "XC":   90,
     "L":   50,
    "XL":   40,
     "X":   10,
    "IX":    9,
     "V":    5,
    "IV":    4,
     "I":    1
  };

  return function () {
    var roman = '',
        key   = null;

    for (key in romans) {
      while (numeral >= romans[key]) {
        numeral -= romans[key];
        roman   += key;
      }
    }

    return roman;
  }();
};

Function.prototype.method = function (name, func) {
  this.prototype[name] = func;
  return this;
};

Number.method('toRoman', function () {
  return romanNumerals(this);
});