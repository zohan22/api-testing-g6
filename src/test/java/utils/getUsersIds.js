function fn(usuarios) {
  if (!usuarios || usuarios.length === 0) {
    karate.log("No hay usuarios");
    return [];
  }
  return usuarios.map((u) => u.id);
}
