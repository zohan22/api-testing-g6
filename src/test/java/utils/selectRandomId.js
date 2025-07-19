function fn(ids) {
  if (!ids || ids.length === 0) {
    karate.log("No hay IDs para seleccionar");
    return null;
  }
  let index = Math.floor(Math.random() * ids.length);
  return ids[index];
}
