#include "chiaki_bridge.h"
#include "pslink_config.h"

#include <string.h>

int pslink_discover(
    PSLinkConsole *console
)
{
    strcpy(
        console->name,
        DEFAULT_PS5_NAME
    );

    strcpy(
        console->ip,
        DEFAULT_PS5_IP
    );

    console->online = 0;

    return 0;
}