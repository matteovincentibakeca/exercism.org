export const valid = (value) => {
  value = value.replaceAll(/\s/g,'')
  if (value.length < 2 || /\D/i.test(value)) return false

  const res = [...value].reverse()
    .map((item, index) => (index + 1) % 2 === 0 ? ((item) => {
      const res = item * 2
      return res > 9 ? res - 9 : res
    })(item) : item)
    .reduce((a, b) => Number(a) + Number(b), 0)

  return !(res % 10)
};
