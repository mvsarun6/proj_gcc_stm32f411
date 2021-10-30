#define true 1
char varxxxx[100*1024];

int main()
{

    int loc = varxxxx[5];
    while(true)
    {
        loc++;
        // endless loop...
    }
}

