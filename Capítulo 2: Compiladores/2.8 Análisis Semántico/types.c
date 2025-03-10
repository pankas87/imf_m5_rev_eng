#include<stdio.h>
#include<limits.h>

int main(void) {
    int             var1 = 0x22222222;
    unsigned int    var2 = 0x33333333;
    short           var3 = 0x4444;
    unsigned short  var4 = 0x5555;
    char            var5 = 0x66;
    unsigned char   var6 = 0x77;
    long            var7 = 0x88888888;
    unsigned long   var8 = 0x99999999;

    printf("Size of char: %d (MAX: %d, MIN: %d)\n", sizeof(var5), CHAR_MAX, CHAR_MIN);
    printf("Size of unsigned char: %d (MAX: %d, MIN: %d)\n", sizeof(var6), UCHAR_MAX, 0);
    printf("Size of short: %d (MAX: %d, MIN: %d)\n", sizeof(var3), SHRT_MAX, SHRT_MIN);
    printf("Size of unsigned short: %d (MAX: %d, MIN: %d)\n", sizeof(var4), USHRT_MAX, 0);
    printf("Size of int: %d (MAX: %d, MIN: %d)\n", sizeof(var1), INT_MAX, INT_MIN);
    printf("Size of unsigned int: %d (MAX: %d, MIN: %d)\n", sizeof(var2), UINT_MAX, 0);
    printf("Size of long: %d (MAX: %ld, MIN: %ld)\n", sizeof(var7), LONG_MAX, LONG_MIN);
    printf("Size of unsigned long: %d (MAX: %lu, MIN: %d)\n", sizeof(var8), ULONG_MAX, 0);
}