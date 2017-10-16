#include <stdio.h>
#include <stdlib.h>

#include "common.h"

int main (int argc, char *argv[]) {

    int iConnDb;
    int iDisconnDb;

    printf("Test\n");
    //DBê⁄ë±
    iConnDb = coco_ConnDb();
    //print
    gv01_004_GetProcessInfo();
    //DBêÿíf
    iDisconnDb = coco_DisconnDb();

    return 0;
}