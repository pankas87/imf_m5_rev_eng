# Lenguaje Ensamblador

## Ruta de Aprendizaje

- 

## Tipos de datos

### x86 (32 bits)

| Tipo                 | Ancho en bits | Valor mínimo         | Valor máximo         |
|----------------------|---------------|----------------------|----------------------|
| `signedchar`         | 8             | -128                 | 127                  |
| `unsigned char`      | 8             | 0                    | 255                  |
| `short`              | 16            | -32768               | 32767                |
| `unsigned short`     | 16            | 0                    | 65535                |
| `int`                | 32            | -2147483648          | 2147483647           |
| `unsigned int`       | 32            | 0                    | 4294967295           |
| `long`               | 32            | -2147483648          | 2147483647           |
| `unsigned long`      | 32            | 0                    | 4294967295           |
| `long long`          | 64            | -9223372036854775808 | 9223372036854775807  |
| `unsigned long long` | 64            | 0                    | 18446744073709551615 |

### x86_64 (64 bits)

En las arquitecturas de 64 bits hay varias opciones y cada compilador opta por una.

| Tipo        | ILP32 | ILP32LL | LP64 | ILP64 | LLP64 |
|-------------|-------|---------|------|-------|-------|
| `char`      | 8     | 8       | 8    | 8     | 8     |
| `short`     | 16    | 16      | 16   | 16    | 16    |
| `int`       | 32    | 32      | 32   | 64    | 32    |
| `long`      | 32    | 32      | 64   | 64    | 32    |
| `long long` | N/A   | 64      | 64   | 64    | 64    |
| `pointer`   | 32    | 32      | 64   | 64    | 64    |

## Sintaxis y Operandos

Una instrucción puede contener 0, 1, 2 y 3 operandos.

### Tamaños de Palabra

| Nombre         | Identificador   | Tamaño              |
|----------------|-----------------|---------------------|
| Word           | `WORD`          | 2 bytes (16 bits)   |
| Double Word    | `DWORD`         | 4 bytes (32 buts)   |
| Quadruple Word | `QWORD`         | 8 bytes (64 bits)   |
| Paragraph      |                 | 16 bytes (128 bits) |

### Operandos

## Registros

- Son ubicaciones internas de la memoria del procesador, que permiten realizar operaciones sobre datos con mejor desempeño en tiempo de acceso que el ofrecido por la memoria RAM.
- Almacenan elementos de datos para procesamiento, sin tener que acceder a la memoria.
- El chip del procesador cuenta con un limitado número de registros construidos dentro de él.

### Tipos de Registros

- Registros de Propósito General:
    - Registros de Datos.
        - `AX`
            - El acumulador primario. Se usa en operaciones de entrada y salida y en la mayoría de instrucciones aritméticas.
            - Por ejemplo, en la operación de multiplicación, un operando es almacenado en el registro EAX, AX o AL según el tamaño del operando.
        - `BX`
            - Conocido como el registro base, ya que puede ser usado para direccionamiento de memoria indexado.
        - `CX`
            - Conocido como el registro de conteo, almacenan el conteo de un bucle en operaciones iterativas.
        - `DX`
            - Conocido como el registro de datos.
            - También se usa en operaciones de entrada y salida.
            - Se usa en conjunto con el registro `AX` para operaciones de multiplicación y división que involucran valores grande.
    - Registros de Punteros.
        - Registros de 32 bits `EIP`, `ESP` y `EBP` y sus porciones de 16 bits correspondientes `IP`, `SP`, `BP`.
            - Instruction Pointer (`EIP`, `IP`):
                - El registro de 16 bits `IP` contiene el offset de dirección de la próxima instrucción a ser ejecutada. 
                - `IP` en asociación con el registro `CS` (Code Segment) (`CS:IP`) entrega la dirección completa de la instrucción actual en el segmento de código.
            - Stack Pointer (`ESP`, `SP`):
                - El registro de 16 bits `SP` provee el valor de offset dentro de la pila del programa (Program stack).
                - `SP` en asociación con el registro `SS` (Stack Segment) (`SS:SP`) refiere a la posición actual de datos o dirección de ejecución dentro de la pila del programa.
            - Base Pointer (`EBP`, `BP`):
                - El registro de 16 bits `BP` principalmente asiste en referencia parámetros variables pasados a una subrutina.
                - La dirección en el registro `SS` se combina con el offset en `BP` para obtener la ubicación de un parámetro.
                - `BP` también puede combinarse con `DI` y `SI` como un registro base para direccionamiento especial (?).
    - Registros de Índices.
        - Registros de índices de 32 bits, `ESI` y `EDI`; y sus porciones de 16 bits a la derecha, `SI` y `DI`.
        - Se usan para direccionamiento de memoria indexado
        - Ocasionalmente se usan en adición y sustracción.
        - Dos conjuntos:
            - Source Index (`ESI`, `SI`): Se usa como índice de origen para operaciones sobre cadenas de texto.
            - Destination Index (`EDI`, `DI`): Se usa como índice de destino para operaciones sobre cadenas de texto.
- Registros de Control.
    - Los punteros de instrucción de 32 bits y los registros de flags de 32 bits, combinados, son considerados los registros de control.
    - Muchas instrucciones involucran comparaciones y cálculos matemáticos y cambian el estado de las flags.
    - Instrucciones condicionales revisan el valor de las flags de estado para cambiar el flujo de ejecución hacia otra ubicación.
- Registros de Segmento.

## Registros x86

- Registros de 32 bits.
- Pueden ser referenciados como enteros de 16 u 8 bits. Por ejemplo:

```asc
                          EAX
|<--------------------- 32 bits ----------------------->|
+------+------+------+------+------+------+------+------+
| 1010 | 1001 | 1101 | 1100 | 1000 | 0001 | 1111 | 0101 |
|  A   |  9   |  D   |  C   |  8   |  1   |  F   |  5   |
+------+------+------+------+------+------+------+------+

                                         AX
                            |<-------- 16 bits -------->|
                            +------+------+------+------+
                            | 1000 | 0001 | 1111 | 0101 |
                            |  8   |  1   |  F   |  5   |
                            +------+------+------+------+

                                  AH
                            |<-- 8 bits ->|
                            +------+------+
                            | 1000 | 0001 |
                            |  8   |  1   |
                            +------+------+
                                                AL
                                          |<-- 8 bits ->|
                                          +------+------+
                                          | 1111 | 0101 |
                                          |  F   |  5   |
                                          +------+------+
```

### Registros de Propósito General

#### Registros de Datos

- Cuatro registros de 32 bits usados para operaciones aritméticas, lógicas, y otras operaciones.
- Estos registros de 32 bits pueden ser usados de la siguiente forma:
    - Registros completos de 32 bits: EAX, EBX, ECX, EDX.
    - Las mitades bajas de los registros de 32 bits se pueden usar como cuatro registros de datos de 16 bits: AX, BX, CX, DX.
    - Las mitades medias y bajas de los registros de 16 bits mencionados anteriormente pueden ser usados como registros de 8 bits: AH, AL, BH, BL, CH, CL, DH y DL.

[comment:] <> (TODO: Incluir resumen del contenido de TutorialsPoint junto a este contenido.)

##### Extended Accumulator Register (EAX)

```asc
          +----+----+
          | AH | AL |
          +----+----+
          |   AX    |
+---------+---------+
|        EAX        |
+-------------------+
<----- 32 bits ----->
```

- `eax` generalmente contiene el valor de retorno de la ejecución de una función. Si se observa el registro `eax` justo después de una invocación a función, lo más probable es que contenga el valor de retorno.
- `eax` también puede ser usado como una memoria temporal del CPU en sumas:


>```asm
>   mov [ebp+var_4], 0      ; int a = 0
>   mov eax, [ebp+var_4]    ; store local variable var_4 in eax
>   add eax, 0Bh            ; add 11 to eax
>   mov [ebp+var_4], eax    ; store new content (11+0) into var_4
>```

- El uso de `eax` y `edx` se encuentran siempre implicados en las instrucciones de multiplicación y división.

##### Extended Base Register (EBX)

- Conocido como el Registro Base, pues puede ser empleado en direccionamiento indexado.

>```asc
>          +----+----+
>          | BH | BL |
>          +----+----+
>          |   BX    |
>+---------+---------+
>|        EBX        |
>+-------------------+
>```

##### Extended Counter Register (ECX)

- Almacenan el contador de loops (ciclos, bucles) en operaciones iterativas.

>```asc
>          +----+----+
>          | CH | CL |
>          +----+----+
>          |   CX    |
>+---------+---------+
>|        ECX        |
>+-------------------+
>```

##### Extended Data Register (EDX)

- Conocido como el Registro de Datos. Se emplea en las operaciones de entrada y salidad.
- También se emplea junto con el registro AX para operaciones de multiplicación y división que involucran grandes valores.

>```asc
>          +----+----+
>          | DH | DL |
>          +----+----+
>          |   DX    |
>+---------+---------+
>|        EDX        |
>+-------------------+
>```

#### Registros de Punteros

- Los registros de puntero son los registros EIP, ESP y EBP, de 32 bits, y sus porciones de 16 bits hacia la derecha IP, SP, BP.
- Existen tres categorías de registros de puntero.

## Registros X86_64

| Registro | Aliases/Sub‑partes                 | Uso Típico                                        |
|----------|------------------------------------|---------------------------------------------------|
| `rax`    | `eax`, `ax`, `ah/al`               | Accumulator (mul, div, IO ops)                    |
| `rbx`    | `ebx`, `bx`, `bh/bl`               | Base pointer (callee‑saved)                       |
| `rcx`    | `ecx`, `cx`, `ch/cl`               | Counter (loop, shift counts)                      |
| `rdx`    | `edx`, `dx`, `dh/dl`               | I/O, mul/div, varargs                             |
| `rdi`    | `edi`, `di`                        | 1st arg in SysV ABI; string ops                   |
| `rsi`    | `esi`, `si`                        | 2nd arg in SysV ABI; string ops                   |
| `rbp`    | `ebp`                              | Frame pointer (callee‑saved)                      |
| `rsp`    | `esp`                              | Stack pointer (always aligned)                    |
| `r8–r15` | `r8d–r15d`, `r8w–r15w`, `r8b–r15b` | Additional temps, arguments (3rd–8th in SysV ABI) |

## Registros ARM

## Instrucciones

Las instrucciones son comandos ejecutados por el procesador en tiempo de ejecución.

### Manejo de Memoria

| Instrucción | Sintaxis                  | Funcionamiento                                                     |
|-------------|---------------------------|--------------------------------------------------------------------|
| `mov`       | `mov destination, source` | Se usa para copiar (mover) data hacia los registros o la RAM.      |
| `movq`      | `movq destination, source`| Copia un valor quadword del operando fuente al operando destino    |
| `push`      | `push value`              | Mueve valores hacia la pila (stack).                               |
| `pop`       | `pop register`            | Restaura un valor de la cima de la pila (stack) hacia un registro. |

### Instrucciones Lógicas

| Instrucción | Sintaxis                  | Funcionamiento                                                                                                             |
|-------------|---------------------------|----------------------------------------------------------------------------------------------------------------------------|
| `cmp`       | `cmp destination, source` | Se usa para efectuar una comparación. Idéntica a la instrucción sub, sin afectar operandos. Impacta el ZF y CF <sup>1</sup>|

<sup>1</sup> Impacta el Zero Flag y Carry Flag:

| cmp dst, src | ZF | CF |
|--------------|----|----|
|  dst == src  |  1 |  0 |
|   dst < src  |  0 |  1 |
|   dst > src  |  0 |  0 |

### Instrucciones de Control de Flujo

| Instrucción   | Sintaxis                  | Funcionamiento                                                                                                             |
|---------------|---------------------------|----------------------------------------------------------------------------------------------------------------------------|
| `jmp`         | `jmp label`               | Salto incondicional hacia otra sección del código, transfiere el flujo de ejecución al cambiar el puntero de instrucción.  |
| `call`        | `call label`              | Llamado a una función o procedimiento remoto <sup>2</sup>.                                                                 |
| `jle`         | `jle label`               | Salto de comparación con signo si en la ejecución de `cmp` el operando de destino es menor o igual que el de origen.       |

<sup>2</sup> `call` ejecuta dos operaciones:
    - Empuja la dirección de retorno hacia el stack.
    - Cambia el `eip` hacia el distino invocado.

## Directivas
### TODO: Expandir sobre las directivas

- Instrucciones empleadas por el ensamblador para contolar el proceso de ensamblado.
- Todas las directivas de ensamblado comienzan con un punto.
- También conocidas como pseudo-ops (pseudo operaciones), puesto que no generan directamente código de máquina ejecutable.
- Ubicadas en archivos *.s


## Enlaces de Interés

- Aldeid - Wiki: [x86 Assembly](https://www.aldeid.com/wiki/Category:Architecture/x86-assembly)
- Unversity of Virnginia - Computer Science: [CS216 - x86 Assembly Guide](https://www.cs.virginia.edu/~evans/cs216/guides/x86.html)
- Tutorials Point: [Assembly Tutorial](https://www.tutorialspoint.com/assembly_programming/index.htm)
- Hobart and William Smith Colleges: [x86_64 Registers and Instructions](https://math.hws.edu/eck/cs220/f22/registers.html)
- GNU: [GNU Assembler Manual](https://ftp.gnu.org/old-gnu/Manuals/gas/html_chapter/as_toc.html)
- Stack Overflow: [int 0x80 - Interrupt](https://stackoverflow.com/questions/1817577/what-does-int-0x80-mean-in-assembly-code)
- Stack Overflow: [db instruction](https://stackoverflow.com/questions/17387492/what-does-the-assembly-instruction-db-actually-do)
- Github: [x86 Assembly Cheatsheet](https://github.com/cirosantilli/x86-assembly-cheat/)
- ARM: [ARM Developer Portal and Documentation](https://developer.arm.com/documentation)