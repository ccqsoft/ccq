#include <stdio.h>
#include <stdlib.h>

#include "common.h"

int main (int argc, char *argv[]) {

    int iConnDb;
    int iDisconnDb;

    printf("Test\n");
    //DB�ڑ�
    iConnDb = coco_ConnDb();
    //print
    gv01_004_GetProcessInfo();
    //DB�ؒf
    iDisconnDb = coco_DisconnDb();

    return 0;
}