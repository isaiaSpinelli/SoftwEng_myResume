const {mul} = require('./mul');

test('1 * 1 = 1', () => {
 expect(mul(1, 1)).toBe(1);
});

test('2 * 0 = 0', () => {
    expect(mul(2, 0)).toEqual(0);
});
  
test('2 * -1 = -2', () => {
	expect(mul(2, -1)).toEqual(2);
});

test('-2 * -1 = 2', () => {
	expect(mul(-2, -1)).toEqual(2);
});

