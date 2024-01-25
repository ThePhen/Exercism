/// <reference path="./global.d.ts" />
// @ts-check

export function cookingStatus(remainingTimeInMins) {
  switch (remainingTimeInMins) {
    case 0:
      return "Lasagna is done.";
    case undefined:
      return "You forgot to set the timer.";
    default:
      return "Not done, please wait.";
  }
}

export function preparationTime(layers, minsPerLayer = 2) {
  return layers.length * minsPerLayer;
}

export function quantities(layers) {
  return layers.reduce(
    (acc, item) => {
      if ("noodles" == item) acc["noodles"] += 50;
      else if ("sauce" == item) acc["sauce"] += 0.2;
      return acc;
    },
    { noodles: 0, sauce: 0 }
  );
}

export function addSecretIngredient(friendsList, myList) {
  const ing = friendsList[friendsList.length - 1];
  const len = myList.length;
  if (myList[len - 1] != ing) myList[len] = ing;
  return;
}

export function scaleRecipe(recipe, numPortions) {
  let out = { ...recipe };
  for (let i in out) out[i] = out[i] *= numPortions / 2;
  return out;
}
