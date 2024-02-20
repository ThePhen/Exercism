// @ts-check
//
// The line above enables type checking for this file. Various IDEs interpret
// the @ts-check directive. It will give you helpful autocompletion when
// implementing this exercise.

/**
 * Determines how long it takes to prepare a certain juice.
 *
 * @param {string} name
 * @returns {number} time in minutes
 */
export function timeToMixJuice(name) {
  const menu = {
    "Pure Strawberry Joy": 0.5,
    Energizer: 1.5,
    "Green Garden": 1.5,
    "Tropical Island": 3,
    "All or Nothing": 5,
  };
  var zz = menu[name];
  return zz || 2.5;
}

/**
 * Calculates the number of limes that need to be cut
 * to reach a certain supply.
 *
 * @param {number} wedgesNeeded
 * @param {string[]} limes
 * @returns {number} number of limes cut
 */
export function limesToCut(wedgesNeeded, limes) {
  var totWedgesCut = 0;
  var answer = 0;
  while (totWedgesCut < wedgesNeeded && answer < limes.length) {
    switch (limes[answer]) {
      case "small":
        totWedgesCut += 6;
        break;
      case "medium":
        totWedgesCut += 8;
        break;
      case "large":
        totWedgesCut += 10;
        break;
    }
    answer++;
  }
  return answer;
}

/**
 * Determines which juices still need to be prepared after the end of the shift.
 *
 * @param {number} timeLeft
 * @param {string[]} orders
 * @returns {string[]} remaining orders after the time is up
 */
export function remainingOrders(timeLeft, orders) {
  var out = [];
  orders.forEach((aDrink) => {
    if (timeLeft > 0) {
      timeLeft -= timeToMixJuice(aDrink);
    } else {
      out.push(aDrink);
    }
  });
  return out;
}
