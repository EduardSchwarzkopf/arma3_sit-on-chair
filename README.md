# Arma 3 - Sit on Chair Script
### install

Place the `sitdown.sqf` in your `scripts` folder

### init
On a single Chair:
	`this addAction ["Sit Down","scripts\sitdown.sqf"];`

for all placed chairs place this in your `init.sqf`:
```
if (isServer) then {
  _chairs = ["Land_CampingChair_V1_F", "Land_CampingChair_V2_F"];

  {
    if (typeOf _x in _chairs) then {
      _x addAction ["Sit Down","scripts\sitdown.sqf"];
    };

  } forEach (allMissionObjects "");

};
```

## Credits
MacRae  
Regimental Combat Team 7
