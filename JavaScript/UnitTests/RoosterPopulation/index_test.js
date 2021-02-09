const assert = require('assert');
const Rooster = require('../index');

describe('Rooster', () => {
  describe('.announceDawn', () => {
    it('returns a rooster call', () => {
      const expected = 'cock-a-doodle-doo!';
      const result = Rooster.announceDawn();
      assert.strictEqual(expected, result);
    });
  });
  describe('.timeAtDawn', () => {
    it('returns its argument as a string', () => {
      const inputNumber = 12;
      const result = '12';

      const actual = Rooster.timeAtDawn(inputNumber);

      assert.equal(actual, result);
    });

    it('throws an error if passed a number less than 0', () => {
      const inputNumber = -1;
      const result = RangeError;
      assert.throws(
  () => {
     Rooster.timeAtDawn(inputNumber);
  },
  RangeError
);
    });
    it('throws an error if passed a number greater than 23', () => {
      const inputNumber = 24;
      const result = RangeError;
      assert.throws(
  () => {
     Rooster.timeAtDawn(inputNumber);
  },
  RangeError
);
    });
  });
});
