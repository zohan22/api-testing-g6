function fn(autores) {
  if (!autores || autores.length === 0) {
    karate.log("No hay autores");
    return [];
  }
  return autores.map((a) => a.id);
}
