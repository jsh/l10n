#include<libintl.h>
#include<locale.h>
#include<stdio.h>

#define _(String) gettext (String)

int main()
{
    setlocale(LC_ALL,"");
    bindtextdomain("hello","/usr/share/locale");
    textdomain("hello");
    printf(_("hello, world\n"));
    return 0;
}
