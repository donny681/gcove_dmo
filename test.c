#include <stdio.h>
#include <string.h>


void hello()
{
    printf("hello world\r\n");

}
void hello1()
{
    printf("hello world1\r\n");

}
void hello2()
{
    printf("hello world2\r\n");

}
int main(int argc, char *argv[])
{   
    for (int i =0; i<10;i++)
    {
        printf("here\r\n");
    }
    if (argc >=2) {
        printf("=====argc>=2\n");
        hello1();
        return 0;
    }
    printf("helloworld begin\n");

    if (argc <2){
        printf("=====argc<2\n");
        hello();
        return 0;
    }
    return 0;
}

