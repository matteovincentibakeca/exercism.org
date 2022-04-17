/**
 * Get the factors of a number
 * 
 * @param {number} n - the input number
 * @returns {Array<number>} - the return array of factors
 */
function getFactors(n) {
  const res = []

  for (var i = 1; i <= Math.floor(n/2); i++) {
    if (n % i === 0) {
      res.push(i)
    }
  }

  return res
}


/**
 * Classify fn
 */
export const classify = (n) => {
  if (n < 1) {
    throw new Error('Classification is only possible for natural numbers.')
  }

  const sum = getFactors(n).reduce((a, b) => a + b, 0)

  if (sum > n) return 'abundant'
  if (sum < n) return 'deficient'

  return 'perfect'
};
