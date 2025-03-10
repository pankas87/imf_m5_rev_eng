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

## Instrucciones Lógicas

> ```asm
>   cmp destination, source
>   ; Realiza una comparación. Es idéntica la instrucción sub exceptuando que no afecta los operandos.
>   ; Impacta el Zero Flag (ZF) y el Carry Flag (CF) de la siguiente forma:
>   ;  - dest = src <=> ZF: 1, CF: 0
>   ;  - dest < src <=> ZF: 0, CF: 1
>   ;  - dest > src <=> ZF: 0, CF: 0
> ```

|

## Instrucciones que Modifican el Flujo de Ejecución

> ```asm
>   jmp 0x11a3 <main+90>
>   ;jmp -> Salto incondicional, transfiere el flujo de ejecución al cambiar el puntero de instrucción (Program Counter / Instruction Pointer)
>
>   call 0x1030 <printf@plt>
>   ;call -> LLamado a una función o procedimiento remoto (Ubicado en otra librería)
>   ;     -> Dos Operaciones:
>   ;       1.- Empuja la dirección de retorno (Dirección ubicado luego de la instrucción call) hacia el stack.
>   ;       2.- Cambia el EIP hacia el destino invocado. Esto transfiere el control hacia la función invocada y comienza la ejecución allí.
>
>   cmp DWORD PTR [rbp-0x4], 0x7
>   jle 0x1168 <main+31>
>   ; Salto condicional ubicado luego de una prueba lógica, como una comparación (cmp)
>   ; Ejecuta un salto de comparación con signo si en la ejecución de cmp el operando de destino es menor o igual que el de origen
> ```

## Punteros

## Punteros (x86)

## Punteros (x86_64)

## Punteros (arm)

## Enlaces de Interés

- Aldeid - Wiki: [x86 Assembly](https://www.aldeid.com/wiki/Category:Architecture/x86-assembly)