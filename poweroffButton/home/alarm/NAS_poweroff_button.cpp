#include <wiringPi.h>
#include <cstdlib>

void callbackShutdown(void)
{
	system("shutdown now -h");
}

int main()
{
	const int nPin = 1;
		
	wiringPiSetup();
	pinMode(nPin, INPUT);
	pullUpDnControl(nPin, PUD_UP);
	
	wiringPiISR(nPin, INT_EDGE_FALLING, &callbackShutdown);
	
	while(1)
	{
		delay(15000);
	}
}
