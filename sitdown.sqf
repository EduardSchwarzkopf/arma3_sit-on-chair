// Author: shinySonic
// Credits: MacRae; Regimental Combat Team 7

_chair = _this select 0; 
_unit = _this select 1; 

_animBaseName = "HubSittingChair"; 
_animType = ["A", "B", "UA", "UB"] call BIS_fnc_selectRandom; 
_animNum = ["1", "2", "3"] call BIS_fnc_selectRandom; 
_anim = [_animBaseName,_animType,"_idle", _animNum] joinString ""; 
 
_noOffset = ["HubSittingChairB_idle2"];
[_unit,_anim] remoteexec ['switchMove'];

hint _anim;
  
_unit setPosASL (_chair modelToWorld [0, -0.1, 0]);  
_unit setDir ((getDir _chair) - 180);  


_action = _unit addaction ["Stand Up",
{
	params ["_unit", "_caller", "_id"];
	_unit removeAction _id;
	[_unit, ""] remoteExec ["switchMove", 0, false];
}];

// Handle multible Standup Actions
if (isNil "standup") then {
	standup = [_action];
} else {
	_unit removeaction (standup select 0);
	standup set [0, _action];
};
