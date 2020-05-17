#include "vars.h"

params ["_holsterType"];

systemChat "unholster wep";

_weapon = currentWeapon player;
_hasWeapon = !((_weapon) isEqualTo "");

diag_log "hasWeapon";
diag_log _hasWeapon;

if (!_hasWeapon) then {
    if (_holsterType isEqualTo HOLSTER_PRIMARY) then {
        KYLE_PLAYER_HOLSTERS set [HOLSTER_PRIMARY, []];
        player action ['SwitchWeapon', player, player, 1];
    };
};
