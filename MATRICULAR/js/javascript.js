window.onload = function (event) {
  let array = [];

  document.getElementById("anadir").onclick = function (event) {
    event.preventDefault();
    let nombre = document.getElementById("nombre").value;

    nombre = nombre.charAt(0).toUpperCase() + nombre.slice(1).toLowerCase();

    array.push(nombre);

    array.sort();
    let lista = document.getElementById("ol");
    lista.innerHTML = "";

    array.forEach((valor) => {
      let elemento = document.createElement("li");
      elemento.innerHTML = valor;
      lista.appendChild(elemento);
    });

    console.log(array);
  };

  document.getElementById("eliminar").onclick = function (event) {
    event.preventDefault();

    let nombreAEliminar = document.getElementById("nombre").value;

    nombreAEliminar =
      nombreAEliminar.charAt(0).toUpperCase() +
      nombreAEliminar.slice(1).toLowerCase();
    let posicion = array.indexOf(nombreAEliminar);

    if (posicion === -1) {
      alert("El nombre no existe en la lista");
    } else {
      array.splice(posicion, 1);

      array.sort();

      let lista = document.getElementById("ol");
      lista.innerHTML = "";

      array.forEach((valor) => {
        let elemento = document.createElement("li");
        elemento.innerHTML = valor;
        lista.appendChild(elemento);
      });
    }
    console.log(array);
  };
};
