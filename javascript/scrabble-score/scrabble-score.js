const map = {
  1: ['A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T'],
  2: ['D', 'G'],
  3: ['B', 'C', 'M', 'P'],
  4: ['F', 'H', 'V', 'W', 'Y'],
  5: ['K'],
  8: ['J', 'X'],
  10: ['Q', 'Z'],
}

export const score = (w) => {
  return [...w.toUpperCase()].map(c => {
    for (const key in map) {
      if (!map[key].includes(c)) continue
      return Number(key)
    }
  }).reduce((a, b) => a + b, 0)
};
