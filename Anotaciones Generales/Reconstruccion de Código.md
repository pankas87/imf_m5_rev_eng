# Reconstrucción y Desensamblado

### Compilar

```bash
    # Compilación regular, indicando nombre de archivo con flag -o
    gcc loop.c -o loop

    # Compilación preservando archivos intermedios
    # Archivos generados:
    gcc -v -save-temps loop.c


    # Compilación incluyengo información de depuración (debugging)
    gcc -g loop.c -o loop

    # Compilación adaptando el nivel de optimización
    gcc -g -Og loop.c -o loop

    # Compilación seleccionando el dialecto de lenguaje ensamblador
    gcc -masm=intel loop.c -o loop

    # Compilación para arquitectura específica
    #   - Incluye instalación de librerías de cross-compiling de GCC y G++ (Multilib)
    apt install gcc-multilib g++-multilib
    gcc variables.c -m32 -o variables-32

    # Generar código ensamblador
    gcc -S variables.c

    # Generar código ensamblador, sintaxis Intel
    gcc -S -masm=intel variables.c

    # Generar código ensamblador, manteniendo referencia a líneas de código fuente originales en C
    gcc -S -fverbose-asm -g -O2 variables.c -o variables_m_64_verbose.s
    # Generar listing file de assembly
    as -alhnd variables_m_64_verbose.s > variables_m_64_verbose.lst
```

## GDB

### Ejecución
```bash
  # Desensamblando archivo ejecutable
  gdb loop

```

### Desensamblado
```bash
  # Configurando la sintaxis Intel para el lenguaje de desensamblado
  set disassembly-flavor intel
  # Desensamblando
  disassemble main
```

### Análisis, Breakpoints, Control

```bash
  # Inicializando un breakpoint y ejecutando el programa
  break main
  run

  # Moverse una instrucción, usar `ni` para la siguiente instrucción
  si

  # Imprimir los valores actuales de los registros
  info registers
```

## Enlaces de interés

### GCC

- Linux Handbook: [GCC Flags](https://linuxhandbook.com/gcc-flags/)
- Kali Linux Docs: [GCC - ARM Cross Compilation Environment](https://www.kali.org/docs/development/arm-cross-compilation-environment/)
- VisualGDB: [GDB - Reference - Commands](https://visualgdb.com/gdbreference/commands/)