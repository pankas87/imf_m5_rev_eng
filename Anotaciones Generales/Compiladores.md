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

#### Fases de compilación en GCC

* **Preprocesado**: 
    - Lee y analiza el código en C, junta todo el código necesario para que el programa pueda ser compilado y ser funcional.
    - Genera un archivo intermedio con la extensión *.i (Código C con todas las referencias necesarias para la compilación)
* **Compilado**:
    - Toma el archivo resultante de la fase anterior e inicia el proceso de compilación.
    - Es la fase donde pasamos de tener un lenguaje de alto nivel a uno de bajo nivel.
    - Aún no tenemos un programa ejecutable válido.
    - Genera un archivo intermedio con la extensión *.s (Código fuente de ensamblado)
* **Ensamblado**:
    - Toma el archivo resultante de la fase anterior y genera el código objeto.
    - Genera código binario válido para la plataforma.
    - Genera un archivo intermedio con la extensión *.o (Archivo de código objeto)
* **Enlazado**:
    - Toma el código objeto resultante de la fase anterior y lo une a las librerías y lo modifica para que sea ejecutable en la plataforma.
    - Genera un archivo intermedio con la extensión *.out