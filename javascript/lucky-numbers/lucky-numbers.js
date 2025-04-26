// @ts-check

/**
 * Calculates the sum of the two input arrays.
 *
 * @param {number[]} array1
 * @param {number[]} array2
 * @returns {number} sum of the two arrays
 */
export function twoSum(array1, array2) {
  const f = (arr) => Number(arr.map((c) => String(c)).join(''));
  return f(array1) + f(array2);
}

/**
 * Checks whether a number is a palindrome.
 *
 * @param {number} value
 * @returns {boolean} whether the number is a palindrome or not
 */
export function luckyNumber(value) {
  var arr = String(value);
  var i = 0;
  var j = arr.length - 1;
  while (j >= i) if (arr[j--] != arr[i++]) return false; 
  return true;
}

/**
 * Determines the error message that should be shown to the user
 * for the given input value.
 *
 * @param {string|null|undefined} input
 * @returns {string} error message
 */
export function errorMessage(input) {
  if (input == null || !String(input).length) return "Required field";
  if (!Number(input)) return "Must be a number besides 0";
  return '';
}
