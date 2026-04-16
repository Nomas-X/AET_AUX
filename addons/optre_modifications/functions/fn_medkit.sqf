params ["_caller", "_target", "_selection", "_className"];

// call ACE's bandage function for selection healing

{
	private _medicalParams = _this;
	_medicalParams set [2, _x];
	_medicalParams call ace_medical_treatment_fnc_bandage;
	if (
		_medicalParams#2 != "body"
		&&
		{
			_medicalParams#2 != "head"
			&&
			{
				["", _target, _selection] call ace_medical_treatment_fnc_cansplint
			}
		}
	) then {
		_medicalParams call ace_medical_treatment_fnc_ivBag;
		_medicalParams call ace_medical_treatment_fnc_splint;
		
	};
} forEach [
	"leftleg",
	"rightleg",
	"leftarm",
	"rightarm",
	"body",
	"head"
];
