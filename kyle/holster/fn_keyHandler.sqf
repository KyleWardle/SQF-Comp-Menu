#include "..\handler\vars.h"
#include "vars.h"

params ["_displayorcontrol", "_key", "_shift", "_ctrl", "_alt"];

switch (_key) do {
    case KEY_HANDLER_H: {
        if (_shift) then {
            call KyleHolster_fnc_holsterCurrentWeapon;

        };
    };

    case KEY_HANDLER_1: {
        if (_ctrl) then {
            [HOLSTER_PRIMARY] call KyleHolster_fnc_unholsterWeapon;
        };
    };


};
