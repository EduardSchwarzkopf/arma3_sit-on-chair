# Arma 3 - Sit on Chair Script
### install

Place the `sitdown.sqf` in your `scripts` folder

### init
On a single Chair:
	`this addAction ["Sit Down","scripts\sitdown.sqf"];`

for all placed chairs place this in your `init.sqf`:
```
_chairList = ["Land_CampingChair_V1_F", "Land_CampingChair_V2_F"];

_missionObjects = allMissionObjects "";
for "_i" from 0 to count _missionObjects -1 do { 
    private _chair = _missionObjects select _i;
    if (typeOf _chair in _chairList) then {
        _chair addAction ["Sit Down","scripts\sitdown.sqf"];
    };
};
```

## Credits
MacRae  
Regimental Combat Team 7
