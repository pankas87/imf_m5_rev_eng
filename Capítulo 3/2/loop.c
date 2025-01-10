# include <stdio.h>
# include <stdlib.h>

int main(int argc, char*argv[]) {
    char buffer[8];
    int count = 0;

    for ( count = 0; count < 8; count++ ) {
        printf("Inserte un dato: ");
        scanf("%c", &buffer[count]);
    }
    return 0;
}