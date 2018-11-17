export const lives = (cell, neighbors) => {
  const living = neighbors.filter(
    x => x.isLiving === true
  ).length
  console.log(!!living)
  console.log("testing")
  return (cell.isLiving)
            ? (living === 2 || living === 3)
              ? true
              : false
            : false

}

