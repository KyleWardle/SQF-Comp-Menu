#include "..\handler\vars.h"

params ["_displayorcontrol", "_key", "_shift", "_ctrl", "_alt"];

switch (_key) do {
    case KEY_HANDLER_1: {
        systemChat "Handle KeyPress";
    }
}