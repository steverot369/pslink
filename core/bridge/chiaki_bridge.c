#include "chiaki_bridge.h"

#include <string.h>

int pslink_discover(
    PSLinkConsole *console
)
{
    strcpy(
        console->name,
        "Living Room PS5"
    );

    strcpy(
        console->ip,
        "192.168.1.50"
    );

    console->online = 1;

    return 0;
}