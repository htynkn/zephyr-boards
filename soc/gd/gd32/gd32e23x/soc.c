#include <zephyr/device.h>
#include <zephyr/init.h>
#include <soc.h>

void soc_early_init_hook(void)
{
	SystemInit();
}