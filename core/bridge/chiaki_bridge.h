#ifndef PSLINK_CHIAKI_BRIDGE_H
#define PSLINK_CHIAKI_BRIDGE_H

#ifdef __cplusplus
extern "C" {
#endif

typedef struct
{
    char name[128];
    char ip[64];
    int online;
} PSLinkConsole;

int pslink_discover(
    PSLinkConsole *console
);

#ifdef __cplusplus
}
#endif

#endif