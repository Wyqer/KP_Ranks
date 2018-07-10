/*
    KPR_fnc_initCBA

    File: fn_initCBA.sqf
    Author: Wyqer - https://github.com/KillahPotatoes
    Date: 2018-07-09
    Last Update: 2018-07-09
    License: GNU General Public License v3.0 - https://www.gnu.org/licenses/gpl-3.0.html

    Description:
    Initializes the CBA Settings for KP Ranks.

    Parameter(s):
    NONE

    Returns:
    BOOL
*/

[
    "KPR_autoMode",
    "CHECKBOX",
    ["Automatic Mode", "Enabling this will apply the insignia automatically on the players uniform."],
    "KP Ranks",
    false,
    true,
    {
        if (KPR_autoMode) then {
            [] spawn KPR_fnc_autoLoop;
        };
    }
] call CBA_Settings_fnc_init;

[
    "KPR_autoModeInterval",
    "SLIDER",
    ["Automatic Mode Interval", "Interval between each insignia auto assignment in seconds."],
    "KP Ranks",
    [1, 60, 5, 0],
    true
] call CBA_Settings_fnc_init;

[
    "KPR_admins",
    "EDITBOX",
    ["Manager", "Add Steam UIDs of players who should be able to access the managing dialog. Format: 13456,456789,123789"],
    "KP Ranks",
    "",
    true,
    {
        params ["_value"];
        KPR_admins = _value splitString ",";
    }
] call CBA_Settings_fnc_init;

true