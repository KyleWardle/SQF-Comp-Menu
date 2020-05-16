// Global key handler

_key_handler_display = 46;
waitUntil { !isNull findDisplay _key_handler_display };

playerKeyHandler = (findDisplay _key_handler_display) displayAddEventHandler ["KeyDown", {
    params ["_displayorcontrol", "_key", "_shift", "_ctrl", "_alt"];

    _this spawn KyleHoster_fnc_keyHandler;

    true;
}]; // Init.sqf
