#include <stdio.h>
#include <stdlib.h>
#include "Log.h"
#include <string>
#include "Charset.h"




int main()
{
	clearLog();

	std::string s1 = "abc";
	std::string s2 = "���";
	std::string s3 = "a���c";

	std::wstring ws1, ws2, ws3;
	ansi2unicode(s1, ws1);
	ansi2unicode(s2, ws2);
	ansi2unicode(s3, ws3);

	std::string os1, os2, os3;
	utf82ansi(s1, os1);
	utf82ansi(s2, os2);
	utf82ansi(s3, os3);


#ifdef USE_UTF8
	log("use���\n");
#else
	log("not use���\n");
#endif
	
	logw(L"test���");

	system("pause");
	return 0;
}
