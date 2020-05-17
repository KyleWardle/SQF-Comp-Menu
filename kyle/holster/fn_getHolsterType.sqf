#include "vars.h"

// Returns primary or secondary

params ["_weapon"];

if ((primaryWeapon player) isEqualTo _weapon) exitWith {
    HOLSTER_PRIMARY;
};

if ((handgunWeapon player) isEqualTo _weapon) exitWith {
    HOLSTER_SECONDARY;
};

if (WEAPON_TASER isEqualTo _weapon) exitWith {
    HOLSTER_TERTIARY;
};
