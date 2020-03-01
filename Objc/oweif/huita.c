//
//  huita.c
//  oweif
//
//  Created by Dmitry Aksyonov on 25.02.2020.
//  Copyright © 2020 Dmitry Aksyonov. All rights reserved.
//

#include "huita.h"

#include <unistd.h>

void putchar(char a) {
    
    write(1, &a, 1);

}

int main()
{
    char a[] = "Hello World";
    int i = 0;

    while (i != '\0')
    {
        putchar(a[i]);
        i++;
    }
    
    return 0;
}
