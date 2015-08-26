#include"simprof.h"
#define baseaddr 0xc8c00000

int main()
{
	//Run Self test
	XStatus x= SIMPROF_SelfTest(baseaddr);
	xil_printf("Working!!\n\r");
return 0;

}
