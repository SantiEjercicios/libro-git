/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ahorcado;

import java.util.Arrays;
import java.util.Scanner;

/**
 *
 * @author FP
 */
public class Principal {

    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        String ahorcado = "macaco";
        ahorcado = ahorcado.toUpperCase();
        char[] palabraArray = ahorcado.toCharArray();
        char[] palabraUsuario = new char[ahorcado.length()];
        boolean controlador = false;
        int menuPrincipal=0;
        int intentos = 6;
        int menu = 0;
        String[] letraAñadida=new String[ahorcado.length()];
        int fallos =0;
        System.out.println("\033[33m  ____  _                           _     _               _     _                              _      _         _                             _       \n" +
"\033[33m |  _ \\(_)                         (_)   | |             | |   (_)                            | |    | |       | |                           | |      \n" +
"\033[33m | |_) |_  ___ _ ____   _____ _ __  _  __| | ___     __ _| |    _ _   _  ___  __ _  ___     __| | ___| |   __ _| |__   ___  _ __ ___ __ _  __| | ___  \n" +
"\033[33m |  _ <| |/ _ \\ '_ \\ \\ / / _ \\ '_ \\| |/ _` |/ _ \\   / _` | |   | | | | |/ _ \\/ _` |/ _ \\   / _` |/ _ \\ |  / _` | '_ \\ / _ \\| '__/ __/ _` |/ _` |/ _ \\ \n" +
"\033[33m | |_) | |  __/ | | \\ V /  __/ | | | | (_| | (_) | | (_| | |   | | |_| |  __/ (_| | (_) | | (_| |  __/ | | (_| | | | | (_) | | | (_| (_| | (_| | (_) |\n" +
"\033[33m |____/|_|\\___|_| |_|\\_/ \\___|_| |_|_|\\__,_|\\___/   \\__,_|_|   | |\\__,_|\\___|\\__, |\\___/   \\__,_|\\___|_|  \\__,_|_| |_|\\___/|_|  \\___\\__,_|\\__,_|\\___/ \n" +
"\033[33m                                                              _/ |            __/ |                                                                    \n\033[32m Creado por Santi");
        for (int i = 0; i < palabraUsuario.length; i++) {
            palabraUsuario[i] = '_';
        }
        while(menuPrincipal!=1){
        System.out.println("\033[36m Dime que quieres hacer. \n\033[32m 1. Jugar \n\033[31m 2. Leer instrucciones \n\033[35m 3. Salir del programa");
        menu = teclado.nextInt();
        switch (menu) {
            case 1:
                
                while (intentos > 0&&!controlador) {
                    System.out.println("Dime una letra");
                    String letra = teclado.next();
                    letra = letra.toUpperCase();
                    for (int i = 0; i < letraAñadida.length; i++) {
                        letraAñadida[i]=letra;
                    }
                    if (ahorcado.contains(letra)) {
                        for (int i = 0; i < ahorcado.length(); i++) {

                            if (ahorcado.charAt(i) == letra.charAt(0)) {
                                palabraUsuario[i] = letra.charAt(0);
                                
                            }
                           
                        }
                       
                            System.out.println(Arrays.toString(palabraUsuario));
                            System.out.println("Correcto! Sigue asi!");
                        if (String.valueOf(palabraUsuario).equals(ahorcado)) {
                            System.out.println("\n\033[31m𝔾𝕖𝕟𝕚𝕒𝕝 𝕒𝕕𝕚𝕧𝕚𝕟𝕒𝕤𝕥𝕖 𝕝𝕒 𝕡𝕒𝕝𝕒𝕓𝕣𝕒\n");
                            controlador = true;
                            
                            
                        }
                    } else {
                        intentos--;
                        fallos++;
                        System.out.println("Letra no acertada. Te quedan: " + intentos + " Intentos");
                        
                    }
                    if (fallos==1) {
                        System.out.println("  +---+\n" +
"  |   |\n" +
"  O   |\n" +
"      |\n" +
"      |\n" +
"      |\n" +
"=========");
                    }else if (fallos==2) {
                        System.out.println("  +---+\n" +
"  |   |\n" +
"  O   |\n" +
"  |   |\n" +
"      |\n" +
"      |\n" +
"=========");
                    }else if (fallos==3) {
                        System.out.println("  +---+\n" +
"  |   |\n" +
"  O   |\n" +
" /|   |\n" +
"      |\n" +
"      |\n" +
"=========");
                    }else if (fallos==4) {
                        System.out.println("  +---+\n" +
"  |   |\n" +
"  O   |\n" +
" /|\\  |\n" +
"      |\n" +
"      |\n" +
"=========");
                    }else if (fallos==5) {
                        System.out.println("  +---+\n" +
"  |   |\n" +
"  O   |\n" +
" /|\\  |\n" +
" /    |\n" +
"      |\n" +
"=========");
                    }else if (fallos ==6) {
                        System.out.println("  +---+\n" +
"  |   |\n" +
"  O   |\n" +
" /|\\  |\n" +
" / \\  |\n" +
"      |\n" +
"=========");
                    }
                   
                }
                 break;
            case 2:
                System.out.println("INSTRUCCIONES: \n\nObjetivo:\n" +
"\n" +
"Adivinar una palabra oculta antes de que se complete un dibujo de ahorcado.\n" +
"\nConfiguración:\n" +
"\n" +
"Palabra secreta temática con guiones para las letras.\n" +
"\nJugadas:\n" +
"\n" +
"Intentar adivinar letras de la palabra. Cada letra correcta se revela, cada error agrega una parte al ahorcado.\n" +
"\nAdivinar la Palabra:\n" +
"\n" +
"Opción de adivinar la palabra completa en cualquier momento.\n" +
"\n"
                        + "Fin del Juego:\n" +
"\n" +
"Ganas si adivinas la palabra antes de completar el ahorcado. Pierdes si se completa el ahorcado antes de adivinar.");
                
                break;
            case 3:
                System.out.println("Saliste del programa imbecil");
                menuPrincipal++;
                        
                break; 
                
        }
        }
           
            
    }

}
