#include "..\handler\vars.h"

params ["_displayorcontrol", "_key", "_shift", "_ctrl", "_alt"];

diag_log "got to holster handler";
diag_log str _key;

switch (_key) do {
    case KEY_HANDLER_1: {
        systemChat "Handle KeyPress";
    };
};

true;