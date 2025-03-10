# Reconstrucción y Desensamblado

## GCC

### Fases de la Compilación

* **Preprocesado**: 
    - Lee y analiza el código en C, junta todo el código necesario para que el programa pueda ser compilado y ser funcional.
    - Genera un archivo intermedio con la extensión *.i (Código C con todas las referencias necesarias para la compilación)
* **Compilado**:
    - Toma el archivo resultante de la fase anterior e inicia el proceso de compilación.
    - Es la fase donde pasamos de tener un lenguaje de alto nivel a uno de bajo nivel.
    - Aún no tenemos un programa ejecutable válido.
    - Genera un archivo intermedio con la extensión *.s (Código fuente en lenguaje ensamblador)
* **Ensamblado**:
    - Toma el archivo resultante de la fase anterior y genera el código objeto.
    - Genera código binario válido para la plataforma.
    - Genera un archivo intermedio con la extensión *.o (Archivo de código objeto)
* **Enlazado**:
    - Toma el código objeto resultante de la fase anterior y lo une a las librerías y lo modifica para que sea ejecutable en la plataforma.
    - Genera un archivo intermedio con la extensión *.out

### Compilar

> ```bash
>   # Compilación regular, indicando nombre de archivo con flag -o
>   gcc loop.c -o loop
>
>   # Compilación preservando archivos intermedios
>   # Archivos generados:
>   gcc -v -save-temps loop.c
>
>   # Compilación incluyengo información de depuración (debugging)
>   gcc -g loop.c -o loop
>
>   # Compilación para arquitectura específica
>   #   - Incluye instalación de librerías de cross-compiling de GCC y G++ (Multilib)
>   apt install gcc-multilib g++-multilib
>   gcc variables.c -m32 -o variables-32
>
>   # Generar código ensamblador
>   gcc -S variables.c
>
>   # Generar código ensamblador, manteniendo referencia a líneas de código fuente originales en C
>   gcc -S -fverbose-asm -g -O2 variables.c -o variables_m_64_verbose.s
>   # Generar listing file de assembly
>   as -alhnd variables_m_64_verbose.s > variables_m_64_verbose.lst
> ```

## GDB

### Ejecución
> ```bash
>   # Desensamblando archivo ejecutable
>   gdb loop
> 
> ```

### Desensamblado y Análisis
> ```bash
>   # Configurando la sintaxis Intel para el lenguaje de desensamblado
>   set disassembly-flavor intel
>   # Desensamblando
>   disassemble main
> ```

## Enlaces de interés

### GCC

- Linux Handbook: [GCC Flags](https://linuxhandbook.com/gcc-flags/)
- Kali Linux Docs: [GCC - ARM Cross Compilation Environment](https://www.kali.org/docs/development/arm-cross-compilation-environment/)
- VisualGDB: [GDB - Reference - Commands](https://visualgdb.com/gdbreference/commands/)

# Estructuras de Datos