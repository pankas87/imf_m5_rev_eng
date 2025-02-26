# Teoría y Funcionamiento de Compiladores

### Fases de la Compilación

> #### Generador de Código Intermedio
>
> ```
>   temp1 = entero(60)
>   temp2 = id3 * temp1
>   id = temp3
> ```
>
> #### Optimizador de Código
>
> ```
>   temp1 = id3 * 60
>   id1 = id2 + temp1
> ```
>
> #### Generador de Código
>
> ```asm
>   mov eax, id3
>   mul eax, 60
>   mov edx, id2
>   add edx, eax
>   mov id1, edx
> ```