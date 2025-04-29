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

## Tamaños de Palabra

| Nombre         | Identificador   | Tamaño              |
|----------------|-----------------|---------------------|
| Word           | `WORD`          | 2 bytes (16 bits)   |
| Double Word    | `DWORD`         | 4 bytes (32 buts)   |
| Quadruple Word | `QWORD`         | 8 bytes (64 bits)   |
| Paragraph      |                 | 16 bytes (128 bits) |

## Registros

- Son ubicaciones internas de la memoria del procesador, que permiten realizar operaciones sobre datos con mejor desempeño en tiempo de acceso que el ofrecido por la memoria RAM.
- Almacenan elementos de datos para procesamiento, sin tener que acceder a la memoria.
- El chip del procesador cuenta con un limitado número de registros construidos dentro de él.

### Categorías de Registros

#### 1. de Propósito General

- Registros de Propósito General:
    - Registros de Datos.
        - `rax`, `eax`, `ax`
            - El acumulador primario. Se usa en operaciones de entrada y salida y en la mayoría de instrucciones aritméticas.
            - Por ejemplo, en la operación de multiplicación, un operando es almacenado en el registro EAX, AX o AL según el tamaño del operando.
        - `rbx`, `ebx`, `bx`
            - Conocido como el registro base, ya que puede ser usado para direccionamiento de memoria indexado.
        - `rcx`, `ecx`, `cx`
            - Conocido como el registro de conteo, almacenan el conteo de un bucle en operaciones iterativas.
        - `rdx`, `edx`, `dx`
            - Conocido como el registro de datos.
            - También se usa en operaciones de entrada y salida.
            - Se usa en conjunto con el registro `ax` para operaciones de multiplicación y división que involucran valores grande.
    - Registros de Punteros.
        - Registros de 32 bits `eip`, `esp` y `ebp` y sus porciones de 16 bits correspondientes `ip`, `sp`, `bp`.
            - Instruction Pointer (`eip`, `ip`):
                - El registro de 16 bits `ip` contiene el offset de dirección de la próxima instrucción a ser ejecutada. 
                - `ip` en asociación con el registro `cs` (Code Segment) (`cs:ip`) entrega la dirección completa de la instrucción actual en el segmento de código.
            - Stack Pointer (`esp`, `sp`):
                - El registro de 16 bits `sp` provee el valor de offset dentro de la pila del programa (Program stack).
                - `sp` en asociación con el registro `ss` (Stack Segment) (`ss:sp`) refiere a la posición actual de datos o dirección de ejecución dentro de la pila del programa.
            - Base Pointer (`ebp`, `bp`):
                - El registro de 16 bits `bp` principalmente asiste en referencia parámetros variables pasados a una subrutina.
                - La dirección en el registro `ss` se combina con el offset en `bp` para obtener la ubicación de un parámetro.
                - `bp` también puede combinarse con `DI` y `SI` como un registro base para direccionamiento especial (?).
    - Registros de Índices.
        - Registros de índices de 32 bits, `esi` y `edi`; y sus porciones de 16 bits a la derecha, `si` y `di`.
        - Se usan para direccionamiento de memoria indexado
        - Ocasionalmente se usan en adición y sustracción.
        - Dos conjuntos:
            - Source Index (`esi`, `si`): Se usa como índice de origen para operaciones sobre cadenas de texto.
            - Destination Index (`edi`, `di`): Se usa como índice de destino para operaciones sobre cadenas de texto.

## 2. Registros de Segmento.
## TODO: Contenido ChatGPT

## 3. Registros de Control.
## TODO: Contenido ChatGPT
    - Los punteros de instrucción de 32 bits y los registros de flags de 32 bits, combinados, son considerados los registros de control.
    - Muchas instrucciones involucran comparaciones y cálculos matemáticos y cambian el estado de las flags.
    - Instrucciones condicionales revisan el valor de las flags de estado para cambiar el flujo de ejecución hacia otra ubicación.

## 4. Registros de Flags.
## TODO: Contenido ChatGPT

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