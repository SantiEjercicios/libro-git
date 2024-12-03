window.onload = function (event) {
  event.preventDefault();
  let arrayMultidimensional = [
    ["Urraca", "Pajaro", "Animal", "Pico"],
    ["Molino", "Aspas", "Grano", "Electricidad"],
    ["Carretilla", "Obra", "Herramienta", "Tierra"],
  ];

  let palabrasUsadas = [];
  let bole = true;
  let palabraElegida =
    arrayMultidimensional[
      Math.floor(Math.random() * arrayMultidimensional.length)
    ];

  let palabraElegida2 = "";

  document.getElementById("palabra").innerHTML = palabraElegida[0];

  document.getElementById("cambiarPa").onclick = function () {
    palabraElegida2 =
      arrayMultidimensional[
        Math.floor(Math.random() * arrayMultidimensional.length)
      ];

    document.getElementById("palabra").innerHTML = palabraElegida2[0];
    bole = false;
  };
  let arrayUsuario = [];
  document.getElementById("comprobar").onclick = function () {
    let textoUsuario = document.getElementById("texto").value;

    textoUsuario.split(" ").forEach((word) => {
      arrayUsuario.push(word.charAt(0).toUpperCase() + word.slice(1));
    });

    console.log(arrayUsuario);

    palabrasUsadas = arrayUsuario;
    palabrasUsadas2 = arrayUsuario;
    console.log(palabrasUsadas);
    console.log(palabraElegida2);
    let cantidad = palabrasUsadas.length;
    console.log(bole);
    if (bole == false) {
      console.log("entra en bole falso");
      for (let i = 0; i < cantidad; i++) {
        console.log(palabraElegida2.indexOf(palabrasUsadas2[i]));
        if (palabraElegida2.indexOf(palabrasUsadas2[i]) == 1) {
          document.getElementById(
            "terminar"
          ).innerHTML = `Error: Has usado las siguientes palabras progíbidas: ${palabrasUsadas[i]}`;
          console.log("entra en bole falso");
        } else if (
          cantidad.length > 0 &&
          palabraElegida2.indexOf(palabrasUsadas2[i]) == -1
        ) {
          document.getElementById(
            "terminar"
          ).innerHTML = `Has descrito la palabra sin usar palabras prohibidas`;
          console.log("entra en bole falso pero no hay fallos");
        }
      }
    } else {
      console.log("entra en bole true");
      for (let i = 0; i < cantidad; i++) {
        console.log(palabraElegida.indexOf(palabrasUsadas[i]));
        if (palabraElegida.indexOf(palabrasUsadas[i]) == 1) {
          document.getElementById(
            "terminar"
          ).innerHTML = `Error: Has usado las siguientes palabras progíbidas: ${palabrasUsadas[i]}`;
          console.log("entra en bole true");
        } else if (
          cantidad.length > 0 &&
          palabraElegida.indexOf(palabrasUsadas[i]) == -1
        ) {
          document.getElementById(
            "terminar"
          ).innerHTML = `Has descrito la palabra sin usar palabras prohibidas`;
        }
      }
    }
  };

  let arrayPalabrasAnadir = [];
  let palabrasProhibidas = ["reemplazar"];

  document.getElementById("anadir").onclick = function (event) {
    event.preventDefault();
    let apalabraAnadir = document.getElementById("nuevoTermino").value;

    let palabrasProhibidasANADIR =
      document.getElementById("prohibidasUsuario").value;
    palabrasProhibidas = palabrasProhibidasANADIR.split(", ");

    palabrasProhibidas.unshift(apalabraAnadir);

    arrayMultidimensional.push(palabrasProhibidas);
    console.log(arrayMultidimensional);
  };
};
