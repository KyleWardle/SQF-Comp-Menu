#include "vars.h"


systemChat "holster wep";

_holsterType = [currentWeapon player] call KyleHolster_fnc_getHolsterType;
diag_log "_holsterType";
diag_log _holsterType;
_holsterIsEmpty = (KYLE_PLAYER_HOLSTERS select _holsterType) isEqualTo [];
diag_log "_holsterIsEmpty";
diag_log _holsterIsEmpty;

if (_holsterIsEmpty) then {
    diag_log "holster is empty";
    _weapon = nil;
    if (_holsterType isEqualTo HOLSTER_PRIMARY) then {
        _weapon = primaryWeapon player;
    } else {
        _weapon = handgunWeapon player;
    };
    diag_log "weapon";
    diag_log _weapon;

    _hasWeapon = !((_weapon) isEqualTo "");

diag_log _hasWeapon;
    if (_hasWeapon) then {
        _weaponArray = [_holsterType] call KyleHolster_fnc_formWeaponArray;
        KYLE_PLAYER_HOLSTERS set [_holsterType, _weaponArray];
        player action ['SwitchWeapon', player, player, -5];

// wait until anim over :(
        if (!(_holsterType isEqualTo HOLSTER_PRIMARY)) then {
            // Remove weapon
            player removeWeapon (_weaponArray select HOLSTER_INDEX_WEAPON);
        };
    };

};
