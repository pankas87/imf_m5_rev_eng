# Lenguaje Ensamblador

## Tipos de datos

### x86 (32 bits)

| Tipo               | Ancho en bits | Valor mínimo         | Valor máximo         |
|--------------------|---------------|----------------------|----------------------|
| signedchar         | 8             | -128                 | 127                  |
| unsigned char      | 8             | 0                    | 255                  |
| short              | 16            | -32768               | 32767                |
| unsigned short     | 16            | 0                    | 65535                |
| int                | 32            | -2147483648          | 2147483647           |
| unsigned int       | 32            | 0                    | 4294967295           |
| long               | 32            | -2147483648          | 2147483647           |
| unsigned long      | 32            | 0                    | 4294967295           |
| long long          | 64            | -9223372036854775808 | 9223372036854775807  |
| unsigned long long | 64            | 0                    | 18446744073709551615 |

### x86_64 (64 bits)

En las arquitecturas de 64 bits hay varias opciones y cada compilador opta por una.

| Tipo      | ILP32 | ILP32LL | LP64 | ILP64 | LLP64 |
|-----------|-------|---------|------|-------|-------|
| char      | 8     | 8       | 8    | 8     | 8     |
| short     | 16    | 16      | 16   | 16    | 16    |
| int       | 32    | 32      | 32   | 64    | 32    |
| long      | 32    | 32      | 64   | 64    | 32    |
| long long | N/A   | 64      | 64   | 64    | 64    |
| pointer   | 32    | 32      | 64   | 64    | 64    |

## Sintaxis y Operandos

Una instrucción puede contener 0, 1, 2 y 3 operandos.

### Tamaños de Palabra

| Nombre         | Identificador | Tamaño              |
|----------------|---------------|---------------------|
| Word           | WORD          | 2 bytes (16 bits)   |
| Double Word    | DWORD         | 4 bytes (32 buts)   |
| Quadruple Word | QWORD         | 8 bytes (64 bits)   |
| Paragraph      |               | 16 bytes (128 bits) |

### Operandos

## Registros

- Son ubicaciones internas de la memoria del procesador, que permiten realizar operaciones sobre datos con mejor desempeño en tiempo de acceso que el ofrecido por la memoria RAM.
- Almacenan elementos de datos para procesamiento, sin tener que acceder a la memoria.
- El chip del procesador cuenta con un limitado número de registros construidos dentro de él.

### Tipos de Registros

- Registros de Propósito General:
    - Registros de Datos.
    - Registros de Punteros.
    - Registros de Índices.
- Registros de Control.
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

#### Extended Accumulator Register (EAX)

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
- El uso de `eax` y `edx` se encuentran siempre implicados en las instrucciones de multiplicación y división.
- `eax` también puede ser usado como una memoria temporal del CPU en sumas:

```asm
mov [ebp+var_4], 0      ; int a = 0
mov eax, [ebp+var_4]    ; store local variable var_4 in eax
add eax, 0Bh            ; add 11 to eax
mov [ebp+var_4], eax    ; store new content (11+0) into var_4
```

#### Extended Base Register (EBX)

- Conocido como el Registro Base, pues puede ser empleado en direccionamiento indexado.

```asc
          +----+----+
          | BH | BL |
          +----+----+
          |   BX    |
+---------+---------+
|        EBX        |
+-------------------+
```

#### Extended Counter Register (ECX)

- Almacenan el contador de loops (ciclos, bucles) en operaciones iterativas.

```asc
          +----+----+
          | CH | CL |
          +----+----+
          |   CX    |
+---------+---------+
|        ECX        |
+-------------------+
```

#### Extended Data Register (EDX)

- Conocido como el Registro de Datos. Se emplea en las operaciones de entrada y salidad. También se emplea junto con el registro AX para operaciones de multiplicación y división que involucran grandes valores.

```asc
          +----+----+
          | DH | DL |
          +----+----+
          |   DX    |
+---------+---------+
|        EDX        |
+-------------------+
```

### Registros de Punteros

### Instruction Pointer (IP)

### Stack Pointer (SP)

### Base Pointer (BP)

## Registros X86_64

## Registros ARM

## Instrucciones

### Manejo de Memoria

| Instrucción | Sintaxis                | Funcionamiento                                                     |
|-------------|-------------------------|--------------------------------------------------------------------|
| mov         | mov destination, source | Se usa para mover data hacia los registros o la RAM.               |
| push        | push value              | Mueve valores hacia la pila (stack).                               |
| pop         | pop register            | Restaura un valor de la cima de la pila (stack) hacia un registro. |

### Instrucciones Lógicas

| Instrucción | Sintaxis                | Funcionamiento                                                                                                             |
|-------------|-------------------------|----------------------------------------------------------------------------------------------------------------------------|
| cmp         | cmp destination, source | Se usa para efectuar una comparación. Idéntica a la instrucción sub, sin afectar operandos. Impacta el ZF y CF <sup>1</sup>|

<sup>1</sup> Impacta el Zero Flag y Carry Flag:

| cmp dst, src | ZF | CF |
|--------------|----|----|
|  dst == src  |  1 |  0 |
|   dst < src  |  0 |  1 |
|   dst > src  |  0 |  0 |

### Instrucciones que Modifican el Flujo de Ejecución

| Instrucción | Sintaxis                | Funcionamiento                                                                                                             |
|-------------|-------------------------|----------------------------------------------------------------------------------------------------------------------------|
| jmp         | jmp label               | Salto incondicional hacia otra sección del código, transfiere el flujo de ejecución al cambiar el puntero de instrucción.  |
| call        | call label              | Llamado a una función o procedimiento remoto <sup>2</sup>.                                                                 |
| jle         | jle label               | Salto de comparación con signo si en la ejecución de `cmp` el operando de destino es menor o igual que el de origen.       |

<sup>2</sup> `call` ejecuta dos operaciones:
    - Empuja la dirección de retorno hacia el stack.
    - Cambia el `eip` hacia el distino invocado.

## Enlaces de Interés

- Aldeid - Wiki: [x86 Assembly](https://www.aldeid.com/wiki/Category:Architecture/x86-assembly)
- Unversity of Virnginia - Computer Science: [CS216 - x86 Assembly Guide](https://www.cs.virginia.edu/~evans/cs216/guides/x86.html)
- Tutorials Point: [Assembly Tutorial](https://www.tutorialspoint.com/assembly_programming/index.htm)
- Hobart and William Smith Colleges: [x86_64 Registers and Instructions](https://math.hws.edu/eck/cs220/f22/registers.html)