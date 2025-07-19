function fn(autores) {
  var ids = autores.map((a) => a.id);
  return Math.max.apply(null, ids); 
}
