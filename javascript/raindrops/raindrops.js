//
// This is only a SKELETON file for the 'Raindrops' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

export const convert = (a) => {
  var out = []
  if (a % 3 == 0) out.push('Pling');
  if (a % 5 == 0) out.push('Plang');
  if (a % 7 == 0) out.push('Plong');
  return out.length ? out.join('') : "" + a;
};
