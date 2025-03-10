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

### Registros X86

### Registros X86_64

### Registros ARM

## Instrucciones

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

### Manejo de Memoria

| Instrucción | Sintaxis                | Funcionamiento                                                     |
|-------------|-------------------------|--------------------------------------------------------------------|
| mov         | mov destination, source | Se usa para mover data hacia los registros o la RAM.               |
| push        | push value              | Mueve valores hacia la pila (stack).                               |
| pop         | pop register            | Restaura un valor de la cima de la pila (stacj) hacia un registro. |

### Instrucciones que Modifican el Flujo de Ejecución

| Instrucción | Sintaxis                | Funcionamiento                                                                                                             |
|-------------|-------------------------|----------------------------------------------------------------------------------------------------------------------------|
| jmp         | jmp destination         | Salto incondicional hacia otra sección del código, transfiere el flujo de ejecución al cambiar el puntero de instrucción.  |
| call        | call destination        | Llamado a una función o procedimiento remoto <sup>2</sup>.                                                                 |
| jle         | fle destination         | Salto de comparación con signo si en la ejecución de `cmp` el operando de destino es menor o igual que el de origen.       |

<sup>2</sup> `call` ejecuta dos operaciones:
    - Empuja la dirección de retorno hacia el stack.
    - Sambia el `eip` hacia el distino invocado.

## Enlaces de Interés

- Aldeid - Wiki: [x86 Assembly](https://www.aldeid.com/wiki/Category:Architecture/x86-assembly)
- Unversity of Virnginia - Computer Science: [CS216 - x86 Assembly Guide](https://www.cs.virginia.edu/~evans/cs216/guides/x86.html)
- Tutorials Point: [Assembly Tutorial](https://www.tutorialspoint.com/assembly_programming/index.htm)