#include <stdio.h>
#include "public.h"
#include "osal_api.h"
#include "app_api.h"

int main(void)
{
	printf("%s, %s: PUBLIC_MACRO=%d\n", __FILE__, __FUNCTION__, PUBLIC_MACRO);
	osal_api();
	app_api();

	return 0;
}
