ConRO.Shaman = {};
ConRO.Shaman.CheckTalents = function()
end
ConRO.Shaman.CheckPvPTalents = function()
end
local ConRO_Shaman, ids = ...;

function ConRO:EnableRotationModule(mode)
	mode = mode or 0;
	self.ModuleOnEnable = ConRO.Shaman.CheckTalents;
	self.ModuleOnEnable = ConRO.Shaman.CheckPvPTalents;
	if mode == 0 then
		self.Description = "Shaman [No Specialization Under 10]";
		self.NextSpell = ConRO.Shaman.Under10;
		self.ToggleHealer();
	end;
	if mode == 1 then
		self.Description = 'Shaman Module [Elemental - Caster]';
		if ConRO.db.profile._Spec_1_Enabled then
			self.NextSpell = ConRO.Shaman.Elemental;
			self.ToggleDamage();
			ConROWindow:SetAlpha(ConRO.db.profile.transparencyWindow);
			ConRODefenseWindow:SetAlpha(ConRO.db.profile.transparencyWindow);
		else
			self.NextSpell = ConRO.Shaman.Disabled;
			self.ToggleHealer();
			ConROWindow:SetAlpha(0);
			ConRODefenseWindow:SetAlpha(0);
		end
	end;
	if mode == 2 then
		self.Description = 'Shaman Module [Enhancement - Melee]';
		if ConRO.db.profile._Spec_2_Enabled then
			self.NextSpell = ConRO.Shaman.Enhancement;
			self.ToggleDamage();
			ConROWindow:SetAlpha(ConRO.db.profile.transparencyWindow);
			ConRODefenseWindow:SetAlpha(ConRO.db.profile.transparencyWindow);
		else
			self.NextSpell = ConRO.Shaman.Disabled;
			self.ToggleHealer();
			ConROWindow:SetAlpha(0);
			ConRODefenseWindow:SetAlpha(0);
		end
	end;
	if mode == 3 then
		self.Description = 'Shaman Module [Restoration - Healer]';
		if ConRO.db.profile._Spec_3_Enabled then
			self.NextSpell = ConRO.Shaman.Restoration;
			self.ToggleDamage();
			self.BlockBurst();
			ConROWindow:SetAlpha(ConRO.db.profile.transparencyWindow);
			ConRODefenseWindow:SetAlpha(ConRO.db.profile.transparencyWindow);
		else
			self.NextSpell = ConRO.Shaman.Disabled;
			self.ToggleHealer();
			ConROWindow:SetAlpha(0);
			ConRODefenseWindow:SetAlpha(0);
		end
	end;
	self:RegisterEvent('UNIT_SPELLCAST_SUCCEEDED');
	self.lastSpellId = 0;
end

function ConRO:EnableDefenseModule(mode)
	mode = mode or 0;
	if mode == 0 then
		self.NextDef = ConRO.Shaman.Under10Def;
	end;
	if mode == 1 then
		if ConRO.db.profile._Spec_1_Enabled then
			self.NextDef = ConRO.Shaman.ElementalDef;
		else
			self.NextDef = ConRO.Shaman.Disabled;
		end
	end;
	if mode == 2 then
		if ConRO.db.profile._Spec_2_Enabled then
			self.NextDef = ConRO.Shaman.EnhancementDef;
		else
			self.NextDef = ConRO.Shaman.Disabled;
		end
	end;
	if mode == 3 then
		if ConRO.db.profile._Spec_3_Enabled then
			self.NextDef = ConRO.Shaman.RestorationDef;
		else
			self.NextDef = ConRO.Shaman.Disabled;
		end
	end;
end

function ConRO:UNIT_SPELLCAST_SUCCEEDED(event, unitID, lineID, spellID)
	if unitID == 'player' then
		self.lastSpellId = spellID;
	end
end

function ConRO.Shaman.Disabled(_, timeShift, currentSpell, gcd, tChosen, pvpChosen)
	return nil;
end

--Info
local _Player_Level = UnitLevel("player");
local _Player_Percent_Health = ConRO:PercentHealth('player');
local _is_PvP = ConRO:IsPvP();
local _in_combat = UnitAffectingCombat('player');
local _party_size = GetNumGroupMembers();
local _is_PC = UnitPlayerControlled("target");
local _is_Enemy = ConRO:TarHostile();
local _Target_Health = UnitHealth('target');
local _Target_Percent_Health = ConRO:PercentHealth('target');

--Resources
local _Mana, _Mana_Max, _Mana_Percent = ConRO:PlayerPower('Mana');
local _Maelstrom, _Maelstrom_Max = ConRO:PlayerPower('Maelstrom');

--Conditions
local _is_moving = ConRO:PlayerSpeed();
local _enemies_in_melee, _target_in_melee = ConRO:Targets("Melee");
local _enemies_in_10yrds, _target_in_10yrds = ConRO:Targets("10");
local _enemies_in_25yrds, _target_in_25yrds = ConRO:Targets("25");
local _enemies_in_40yrds, _target_in_40yrds = ConRO:Targets("40");
local _can_Execute = _Target_Percent_Health < 20;

--Racials
local _AncestralCall, _AncestralCall_RDY = _, _;
local _ArcanePulse, _ArcanePulse_RDY = _, _;
local _Berserking, _Berserking_RDY = _, _;
local _ArcaneTorrent, _ArcaneTorrent_RDY = _, _;

local HeroSpec, Racial = ids.HeroSpec, ids.Racial;

function ConRO:Stats()
	_Player_Level = UnitLevel("player");
	_Player_Percent_Health = ConRO:PercentHealth('player');
	_is_PvP = ConRO:IsPvP();
	_in_combat = UnitAffectingCombat('player');
	_party_size = GetNumGroupMembers();
	_is_PC = UnitPlayerControlled("target");
	_is_Enemy = ConRO:TarHostile();
	_Target_Health = UnitHealth('target');
	_Target_Percent_Health = ConRO:PercentHealth('target');

	_Mana, _Mana_Max, _Mana_Percent = ConRO:PlayerPower('Mana');
	_Maelstrom, _Maelstrom_Max = ConRO:PlayerPower('Maelstrom');

	_is_moving = ConRO:PlayerSpeed();
	_enemies_in_melee, _target_in_melee = ConRO:Targets("Melee");
	_enemies_in_10yrds, _target_in_10yrds = ConRO:Targets("10");
	_enemies_in_25yrds, _target_in_25yrds = ConRO:Targets("25");
	_enemies_in_40yrds, _target_in_40yrds = ConRO:Targets("40");
	_can_Execute = _Target_Percent_Health < 20;

	_AncestralCall, _AncestralCall_RDY = ConRO:AbilityReady(Racial.AncestralCall, timeShift);
	_ArcanePulse, _ArcanePulse_RDY = ConRO:AbilityReady(Racial.ArcanePulse, timeShift);
	_Berserking, _Berserking_RDY = ConRO:AbilityReady(Racial.Berserking, timeShift);
	_ArcaneTorrent, _ArcaneTorrent_RDY = ConRO:AbilityReady(Racial.ArcaneTorrent, timeShift);
end

function ConRO.Shaman.Under10(_, timeShift, currentSpell, gcd, tChosen, pvpChosen)
	wipe(ConRO.SuggestedSpells);
	ConRO:Stats();
	local Ability, Form, Buff, Debuff, PetAbility, PvPTalent = ids.Shaman_Ability, ids.Shaman_Form, ids.Shaman_Buff, ids.Shaman_Debuff, ids.Shaman_PetAbility, ids.Shaman_PvPTalent;

--Abilities

--Conditions

--Warnings

--Rotations	


return nil;
end

function ConRO.Shaman.Under10Def(_, timeShift, currentSpell, gcd, tChosen, pvpChosen)
	wipe(ConRO.SuggestedDefSpells);
	ConRO:Stats();
	local Ability, Form, Buff, Debuff, PetAbility, PvPTalent = ids.Shaman_Ability, ids.Shaman_Form, ids.Shaman_Buff, ids.Shaman_Debuff, ids.Shaman_PetAbility, ids.Shaman_PvPTalent;

--Abilities

--Conditions

--Warnings

--Rotations	

return nil;
end

function ConRO.Shaman.Elemental(_, timeShift, currentSpell, gcd, tChosen, pvpChosen)
	wipe(ConRO.SuggestedSpells);
	ConRO:Stats();
	local Ability, Form, Buff, Debuff, PetAbility, PvPTalent = ids.Ele_Ability, ids.Ele_Form, ids.Ele_Buff, ids.Ele_Debuff, ids.Ele_PetAbility, ids.Ele_PvPTalent;

--Abilities	
	local _Ascendance, _Ascendance_RDY = ConRO:AbilityReady(Ability.Ascendance, timeShift);
		local _Ascendance_BUFF = ConRO:Aura(Buff.Ascendance, timeShift);
	local _ChainLightning, _ChainLightning_RDY = ConRO:AbilityReady(Ability.ChainLightning, timeShift);
	local _EarthShield, _EarthShield_RDY = ConRO:AbilityReady(Ability.EarthShield, timeShift);
		local _EarthShield_BUFF	= ConRO:Aura(Buff.EarthShield, timeShift);
	local _EarthShock, _EarthShock_RDY = ConRO:AbilityReady(Ability.EarthShock, timeShift);
		local _SurgeofPower_BUFF = ConRO:Aura(Buff.SurgeofPower, timeShift);
	local _Earthquake, _Earthquake_RDY = ConRO:AbilityReady(Ability.Earthquake, timeShift);
		local _EchoesofGreatSundering_BUFF = ConRO:Aura(Buff.EchoesofGreatSundering, timeShift);
	local _FireElemental, _FireElemental_RDY = ConRO:AbilityReady(Ability.FireElemental, timeShift);
		local _Meteor, _Meteor_RDY = ConRO:AbilityReady(PetAbility.Meteor, timeShift, 'pet');
	local _FlameShock, _FlameShock_RDY = ConRO:AbilityReady(Ability.FlameShock, timeShift);
		local _FlameShock_DEBUFF, _, _FlameShock_DUR = ConRO:TargetAura(Debuff.FlameShock, timeShift);
	local _FlametongueWeapon, _FlametongueWeapon_RDY = ConRO:AbilityReady(Ability.FlametongueWeapon, timeShift);
		local _ImprovedFlametongueWeapon_BUFF, _, _ImprovedFlametongueWeapon_DUR = ConRO:Aura(Buff.ImprovedFlametongueWeapon, timeShift);
	local _FrostShock, _FrostShock_RDY = ConRO:AbilityReady(Ability.FrostShock, timeShift);
		local _FluxMelting_BUFF = ConRO:Aura(Buff.FluxMelting, timeShift);
	local _LavaBurst, _LavaBurst_RDY = ConRO:AbilityReady(Ability.LavaBurst, timeShift);
		local _LavaBurst_CHARGES = ConRO:SpellCharges(_LavaBurst);
		local _LavaSurge_BUFF = ConRO:Aura(Buff.LavaSurge, timeShift);
		local _MasteroftheElements_BUFF = ConRO:Aura(Buff.MasteroftheElements, timeShift);
		local _Icefury_BUFF = ConRO:Aura(Buff.Icefury, timeShift);
		local _IcefuryFS_BUFF = ConRO:Aura(Buff.IcefuryFS, timeShift);
	local _LightningBolt, _LightningBolt_RDY = ConRO:AbilityReady(Ability.LightningBolt, timeShift);
		local _Tempest_BUFF = ConRO:Aura(Buff.Tempest, timeShift);
	local _LightningShield, _LightningShield_RDY = ConRO:AbilityReady(Ability.LightningShield, timeShift);
		local _LightningShield_BUFF	= ConRO:Aura(Buff.LightningShield, timeShift);
	local _LiquidMagmaTotem, _LiquidMagmaTotem_RDY= ConRO:AbilityReady(Ability.LiquidMagmaTotem, timeShift);
		local _LiquidMagmaTotem_DOWN = ConRO:Totem(_LiquidMagmaTotem);
	local _NaturesSwiftness, _NaturesSwiftness_RDY = ConRO:AbilityReady(Ability.NaturesSwiftness, timeShift);
	local _PrimordialWave, _PrimordialWave_RDY = ConRO:AbilityReady(Ability.PrimordialWave, timeShift);
		local _PrimordialWave_BUFF = ConRO:Aura(Buff.PrimordialWave, timeShift);
	local _Purge, _Purge_RDY = ConRO:AbilityReady(Ability.Purge, timeShift);
	local _Skyfury, _Skyfury_RDY = ConRO:AbilityReady(Ability.Skyfury, timeShift);
		local _Skyfury_BUFF = ConRO:Aura(Buff.Skyfury, timeShift);
	local _StormElemental, _StormElemental_RDY, _StormElemental_CD, _StormElemental_MaxCD = ConRO:AbilityReady(Ability.StormElemental, timeShift);
		local _WindGust_BUFF, _WindGust_COUNT = ConRO:Form(Form.WindGust);
		local _CallLightning, _CallLightning_RDY = ConRO:AbilityReady(PetAbility.CallLightning, timeShift, 'pet');
		local _TempestPet, _TempestPet_RDY = ConRO:AbilityReady(PetAbility.Tempest, timeShift, 'pet');
	local _Stormkeeper, _Stormkeeper_RDY = ConRO:AbilityReady(Ability.Stormkeeper, timeShift);
		local _Stormkeeper_BUFF = ConRO:Aura(Buff.Stormkeeper, timeShift);
		local _Stormkeeper_CHARGES = ConRO:SpellCharges(_Stormkeeper);
	local _Thunderstorm, _Thunderstorm_RDY = ConRO:AbilityReady(Ability.Thunderstorm, timeShift);
	local _ThunderstrikeWard, _ThunderstrikeWard_RDY = ConRO:AbilityReady(Ability.ThunderstrikeWard, timeShift);
		local _ThunderstrikeWard_BUFF, _, _ThunderstrikeWard_DUR = ConRO:UnitAura(Buff.ThunderstrikeWard, timeShift, _, _, "Weapon");
	local _TotemicRecall, _TotemicRecall_RDY = ConRO:AbilityReady(Ability.TotemicRecall, timeShift);
	local _WindShear, _WindShear_RDY = ConRO:AbilityReady(Ability.WindShear, timeShift);

--Conditions
	local _Shield_COUNT, _Shield_Threshold = 0, 1;
		if tChosen[Ability.ElementalOrbit.talentID] then
			_Shield_Threshold = 2;
		end

		if _LightningShield_BUFF then
			_Shield_COUNT = _Shield_COUNT + 1;
		end

		if _EarthShield_BUFF then
			_Shield_COUNT = _Shield_COUNT + 1;
		end

	local _LavaBurst_COST, _LightningBolt_COST = 8, 6;
		if currentSpell == _LavaBurst then
			_Maelstrom = _Maelstrom + _LavaBurst_COST;
			_LavaBurst_CHARGES = _LavaBurst_CHARGES - 1;
		end

		if currentSpell == _LightningBolt then
			_Maelstrom = _Maelstrom + _LightningBolt_COST;
		end

	if _Icefury_BUFF then
		_FrostShock, _FrostShock_RDY = ConRO:AbilityReady(Ability.Icefury, timeShift);
	end

	if tChosen[Ability.EarthquakeDest.talentID] then
		_Earthquake, _Earthquake_RDY = ConRO:AbilityReady(Ability.EarthquakeDest, timeShift);
	end

	if ConRO:HeroSpec(HeroSpec.Farseer) and tChosen[Ability.AncestralSwiftness.talentID] then
		_NaturesSwiftness, _NaturesSwiftness_RDY = ConRO:AbilityReady(Ability.AncestralSwiftness, timeShift);
	end

	if ConRO:HeroSpec(HeroSpec.Stormbringer) and _Tempest_BUFF then
		_LightningBolt, _LightningBolt_RDY = ConRO:AbilityReady(Ability.Tempest, timeShift);
	end

	local _EarthShock_COST, _ElementalBlast_COST = 60, 90;
		if tChosen[Ability.EyeoftheStorm.talentID] then
			_EarthShock_COST = _EarthShock_COST - 5;
			_ElementalBlast_COST = _ElementalBlast_COST - 10;
		end

	local _Earthquake_COST = _EarthShock_COST;
	if tChosen[Ability.ElementalBlast.talentID] then
		_EarthShock, _EarthShock_RDY = ConRO:AbilityReady(Ability.ElementalBlast, timeShift);
		_EarthShock_COST = _ElementalBlast_COST;
	end

	if ((ConRO_AutoButton:IsVisible() and _enemies_in_40yrds >= 2) or ConRO_AoEButton:IsVisible()) then
		_EarthShock, _EarthShock_RDY = _Earthquake, _Earthquake_RDY;
		_EarthShock_COST = _Earthquake_COST;
	end

--Indicators	
	ConRO:AbilityInterrupt(_WindShear, _WindShear_RDY and ConRO:Interrupt());
	ConRO:AbilityPurge(_Purge, _Purge_RDY and ConRO:Purgable());

	ConRO:AbilityBurst(_Thunderstorm, _Thunderstorm_RDY and ((ConRO:Interrupt() and not _WindShear_RDY and _target_in_melee) or (_target_in_melee and ConRO:TarYou())));
	ConRO:AbilityBurst(_FireElemental, _FireElemental_RDY and not tChosen[Ability.StormElemental.talentID] and ConRO:BurstMode(_FireElemental, 150));
	ConRO:AbilityBurst(_StormElemental, _StormElemental_RDY and ConRO:BurstMode(_StormElemental, 150));
	ConRO:AbilityBurst(_Ascendance, _Ascendance_RDY and ConRO:BurstMode(_Ascendance));
	ConRO:AbilityBurst(_Stormkeeper, _Stormkeeper_RDY and currentSpell ~= _Stormkeeper and ConRO:BurstMode(_Stormkeeper));
	ConRO:AbilityBurst(_LiquidMagmaTotem, _LiquidMagmaTotem_RDY and ConRO:BurstMode(_LiquidMagmaTotem));
	ConRO:AbilityBurst(_PrimordialWave, _PrimordialWave_RDY and not _PrimordialWave_BUFF and ConRO:BurstMode(_PrimordialWave));

	ConRO:AbilityRaidBuffs(_Skyfury, _Skyfury_RDY and not ConRO:RaidBuff(Buff.Skyfury));

	ConRO:AbilityRaidBuffs(_EarthShield, _EarthShield_RDY and not ConRO:IsSolo() and not ConRO:OneBuff(Buff.EarthShield));
	ConRO:AbilityRaidBuffs(_LightningShield, _LightningShield_RDY and not _LightningShield_BUFF and (_Shield_COUNT < _Shield_Threshold));
	ConRO:AbilityRaidBuffs(_FlametongueWeapon, _FlametongueWeapon_RDY and (not _ImprovedFlametongueWeapon_BUFF or (not _in_combat and _ImprovedFlametongueWeapon_DUR < 600)) and tChosen[Ability.ImprovedFlametongueWeapon.talentID])
	ConRO:AbilityRaidBuffs(_ThunderstrikeWard, _ThunderstrikeWard_RDY and (not _ThunderstrikeWard_BUFF or (not _in_combat and _ThunderstrikeWard_DUR < 600)));

--Rotations	
	for i = 1, 2, 1 do
		if not _in_combat then
			if tChosen[Ability.StormElemental.talentID] then
				if _StormElemental_RDY and ConRO:FullMode(_StormElemental, 150) then
					tinsert(ConRO.SuggestedSpells, _StormElemental);
				end
			else
				if _FireElemental_RDY and ConRO:FullMode(_FireElemental, 150) then
					tinsert(ConRO.SuggestedSpells, _FireElemental);
				end
			end

			if _Stormkeeper_RDY and currentSpell ~= _Stormkeeper and not _Stormkeeper_BUFF and not _Ascendance_BUFF and tChosen[Ability.SurgeofPower.talentID] and ConRO:FullMode(_Stormkeeper) then
				tinsert(ConRO.SuggestedSpells, _Stormkeeper);
				_Stormkeeper_RDY = false;
			end

			if _PrimordialWave_RDY and not _FlameShock_DEBUFF then
				tinsert(ConRO.SuggestedSpells, _PrimordialWave);
				_PrimordialWave_RDY = false;
				_FlameShock_DEBUFF = true;
				_FlameShock_DUR = 18;
			end

			if _LiquidMagmaTotem_RDY and not _LiquidMagmaTotem_DOWN and ((ConRO_AutoButton:IsVisible() and _enemies_in_40yrds >= 2) or ConRO_AoEButton:IsVisible()) and ConRO:FullMode(_LiquidMagmaTotem) then
				tinsert(ConRO.SuggestedSpells, _LiquidMagmaTotem);
				_LiquidMagmaTotem_RDY = false;
			end

			if _Ascendance_RDY and ConRO:FullMode(_Ascendance) then
				tinsert(ConRO.SuggestedSpells, _Ascendance);
				_Ascendance_RDY = false;
			end

			if _LavaBurst_RDY and currentSpell ~= _LavaBurst then
				tinsert(ConRO.SuggestedSpells, _LavaBurst);
				_LavaSurge_BUFF = false;
				_Maelstrom = _Maelstrom - _LavaBurst_COST;
				_LavaBurst_CHARGES = _LavaBurst_CHARGES - 1;
			end

			if _FlameShock_RDY and not _FlameShock_DEBUFF then
				tinsert(ConRO.SuggestedSpells, _FlameShock);
				_FlameShock_RDY = false;
				_FlameShock_DEBUFF = true;
				_FlameShock_DUR = 18;
			end
		end

		if tChosen[Ability.StormElemental.talentID] then
			if _StormElemental_RDY and ConRO:FullMode(_StormElemental, 150) then
				tinsert(ConRO.SuggestedSpells, _StormElemental);
				_StormElemental_RDY = false;
			end
		else
			if _FireElemental_RDY and ConRO:FullMode(_FireElemental, 150) then
				tinsert(ConRO.SuggestedSpells, _FireElemental);
				_FireElemental_RDY = false;
			end
		end

		if _LiquidMagmaTotem_RDY and not _LiquidMagmaTotem_DOWN and (not _FlameShock_DEBUFF or _FlameShock_DUR < 12) and ((ConRO_AutoButton:IsVisible() and _enemies_in_40yrds >= 3) or ConRO_AoEButton:IsVisible()) then
			tinsert(ConRO.SuggestedSpells, _LiquidMagmaTotem);
			_LiquidMagmaTotem_RDY = false;
		end

		if _Stormkeeper_RDY and currentSpell ~= _Stormkeeper and not _Stormkeeper_BUFF and not _Ascendance_BUFF and ConRO:FullMode(_Stormkeeper) then
			tinsert(ConRO.SuggestedSpells, _Stormkeeper);
			_Stormkeeper_RDY = false;
		end

		if _PrimordialWave_RDY then
			tinsert(ConRO.SuggestedSpells, _PrimordialWave);
			_PrimordialWave_RDY = false;
			_FlameShock_DEBUFF = true;
			_FlameShock_DUR = 18;
		end

		if _Ascendance_RDY and ConRO:FullMode(_Ascendance) then
			tinsert(ConRO.SuggestedSpells, _Ascendance);
			_Ascendance_RDY = false;
		end

		if _NaturesSwiftness_RDY then
			tinsert(ConRO.SuggestedSpells, _NaturesSwiftness);
			_NaturesSwiftness_RDY = false;
		end

		if _LavaBurst_RDY and currentSpell ~= _LavaBurst and _PrimordialWave_BUFF then
			tinsert(ConRO.SuggestedSpells, _LavaBurst);
			_LavaSurge_BUFF = false;
			_Maelstrom = _Maelstrom - _LavaBurst_COST;
			_LavaBurst_CHARGES = _LavaBurst_CHARGES - 1;
		end

		if _LightningBolt_RDY and _Tempest_BUFF and currentSpell ~= _LightningBolt then
			tinsert(ConRO.SuggestedSpells, _LightningBolt);
			_Tempest_BUFF = false;
		end

		if _LiquidMagmaTotem_RDY and not _LiquidMagmaTotem_DOWN and (not _FlameShock_DEBUFF or _FlameShock_DUR < 12) then
			tinsert(ConRO.SuggestedSpells, _LiquidMagmaTotem);
			_LiquidMagmaTotem_RDY = false;
		end

		if _FlameShock_RDY and (not _FlameShock_DEBUFF or _FlameShock_DUR < 12) and not _SurgeofPower_BUFF and ((ConRO_AutoButton:IsVisible() and _enemies_in_40yrds <= 1) or ConRO_SingleButton:IsVisible()) then
			tinsert(ConRO.SuggestedSpells, _FlameShock);
			_FlameShock_RDY = false;
			_FlameShock_DEBUFF = true;
			_FlameShock_DUR = 18;
		end

		if _Earthquake_RDY and _EchoesofGreatSundering_BUFF then
			tinsert(ConRO.SuggestedSpells, _Earthquake);
			_Maelstrom = _Maelstrom + _Earthquake_COST;
			_EchoesofGreatSundering_BUFF = false;
		end

		if _EarthShock_RDY and currentSpell ~= _EarthShock and (_Maelstrom >= _Maelstrom_Max - 20) then
			tinsert(ConRO.SuggestedSpells, _EarthShock);
			_Maelstrom = _Maelstrom - _EarthShock_COST;
		end

		if _FrostShock_RDY and _Icefury_BUFF and ((ConRO_AutoButton:IsVisible() and _enemies_in_40yrds <= 2) or ConRO_SingleButton:IsVisible()) then
			tinsert(ConRO.SuggestedSpells, _FrostShock);
			_Icefury_BUFF = false;
		end

		if _LavaBurst_RDY and _LavaBurst_CHARGES >= 1 and ((ConRO_AutoButton:IsVisible() and _enemies_in_40yrds <= 1) or ConRO_SingleButton:IsVisible()) then
			tinsert(ConRO.SuggestedSpells, _LavaBurst);
			_Maelstrom = _Maelstrom + _LavaBurst_COST;
			_LavaBurst_CHARGES = _LavaBurst_CHARGES - 1;
			_LavaSurge_BUFF = false;
		end

		if _EarthShock_RDY and currentSpell ~= _EarthShock then
			tinsert(ConRO.SuggestedSpells, _EarthShock);
			_Maelstrom = _Maelstrom - _EarthShock_COST;
		end

		if ((ConRO_AutoButton:IsVisible() and _enemies_in_40yrds <= 1) or ConRO_SingleButton:IsVisible()) then
			if _LightningBolt_RDY then
				tinsert(ConRO.SuggestedSpells, _LightningBolt);
				_Maelstrom = _Maelstrom + _LightningBolt_COST;
			end
		else
			if _ChainLightning_RDY then
				tinsert(ConRO.SuggestedSpells, _ChainLightning);
				_Maelstrom = _Maelstrom + 4;
			end
		end

		if _FrostShock_RDY and _is_moving then
			tinsert(ConRO.SuggestedSpells, _FrostShock);
		end
	end
	return nil;
end

function ConRO.Shaman.ElementalDef(_, timeShift, currentSpell, gcd, tChosen, pvpChosen)
	wipe(ConRO.SuggestedDefSpells);
	ConRO:Stats();
	local Ability, Form, Buff, Debuff, PetAbility, PvPTalent = ids.Ele_Ability, ids.Ele_Form, ids.Ele_Buff, ids.Ele_Debuff, ids.Ele_PetAbility, ids.Ele_PvPTalent;

--Abilities
	local _AstralShift, _AstralShift_RDY = ConRO:AbilityReady(Ability.AstralShift, timeShift);
	local _EarthElemental, _EarthElemental_RDY = ConRO:AbilityReady(Ability.EarthElemental, timeShift);
	local _EarthShield, _EarthShield_RDY = ConRO:AbilityReady(Ability.EarthShield, timeShift);
		local _EarthShield_BUFF	= ConRO:Aura(Buff.EarthShieldEO, timeShift);
	local _HealingStreamTotem, _HealingStreamTotem_RDY = ConRO:AbilityReady(Ability.HealingStreamTotem, timeShift);
	local _HealingSurge, _HealingSurge_RDY = ConRO:AbilityReady(Ability.HealingSurge, timeShift);
		local _SurgingCurrents_BUFF	= ConRO:Aura(Buff.SurgingCurrents, timeShift);
	local _StoneBulwarkTotem, _StoneBulwarkTotem_RDY = ConRO:AbilityReady(Ability.StoneBulwarkTotem, timeShift);

--Conditions

--Indicators
	ConRO:AbilityBurst(_EarthElemental, _EarthElemental_RDY and ConRO:IsSolo() and ConRO:TarYou());

--Rotations
	if _StoneBulwarkTotem_RDY and _Player_Percent_Health <= 25 then
		tinsert(ConRO.SuggestedDefSpells, _StoneBulwarkTotem);
	end

	if _EarthShield_RDY and not _EarthShield_BUFF and tChosen[Ability.ElementalOrbit.talentID] then
		tinsert(ConRO.SuggestedDefSpells, _EarthShield);
	end

	if _HealingSurge_RDY and (_Player_Percent_Health <= 50 or (_Player_Percent_Health <= 90 and _SurgingCurrents_BUFF)) then
		tinsert(ConRO.SuggestedDefSpells, _HealingSurge);
	end

	if _HealingStreamTotem_RDY and _Player_Percent_Health <= 75 then
		tinsert(ConRO.SuggestedDefSpells, _HealingStreamTotem);
	end

	if _AstralShift_RDY then
		tinsert(ConRO.SuggestedDefSpells, _AstralShift);
	end

	if _StoneBulwarkTotem_RDY then
		tinsert(ConRO.SuggestedDefSpells, _StoneBulwarkTotem);
	end
	return nil;
end

function ConRO.Shaman.Enhancement(_, timeShift, currentSpell, gcd, tChosen, pvpChosen)
	wipe(ConRO.SuggestedSpells);
	ConRO:Stats();
	local Ability, Form, Buff, Debuff, PetAbility, PvPTalent = ids.Enh_Ability, ids.Enh_Form, ids.Enh_Buff, ids.Enh_Debuff, ids.Enh_PetAbility, ids.Enh_PvPTalent;

--Abilities
	local _Ascendance, _Ascendance_RDY = ConRO:AbilityReady(Ability.Ascendance, timeShift);
		local _Ascendance_BUFF = ConRO:Aura(Buff.Ascendance, timeShift);
		local _Windstrike, _Windstrike_RDY = ConRO:AbilityReady(Ability.Windstrike, timeShift);
	local _CrashLightning, _CrashLightning_RDY = ConRO:AbilityReady(Ability.CrashLightning, timeShift);
		local _CrashLightning_BUFF = ConRO:Aura(Buff.CrashLightning, timeShift);
		local _ChainCrashLightning_BUFF = ConRO:Aura(Buff.ChainCrashLightning, timeShift);
	local _DoomWinds, _DoomWinds_RDY = ConRO:AbilityReady(Ability.DoomWinds, timeShift);
		local _DoomWinds_BUFF = ConRO:Aura(Buff.DoomWinds, timeShift);
	local _EarthShield, _EarthShield_RDY = ConRO:AbilityReady(Ability.EarthShield, timeShift);
		local _EarthShield_BUFF	= ConRO:Aura(Buff.EarthShield, timeShift);
	local _ElementalBlast, _ElementalBlast_RDY = ConRO:AbilityReady(Ability.ElementalBlast, timeShift);
		local _ElementalBlast_CHARGES, _ElementalBlast_MCHARGES = ConRO:SpellCharges(_ElementalBlast);
	local _FeralSpirit, _FeralSpirit_RDY, _FeralSpirit_CD = ConRO:AbilityReady(Ability.FeralSpirit, timeShift);
		local _FeralSpirit_BUFF = ConRO:Aura(Buff.FeralSpirit, timeShift);
		local _CracklingSurge_BUFF = ConRO:Aura(Buff.ElementalSpirits.CracklingSurge, timeShift);
		local _IcyEdge_BUFF = ConRO:Aura(Buff.ElementalSpirits.IcyEdge, timeShift);
		local _MoltenWeapon_BUFF = ConRO:Aura(Buff.ElementalSpirits.MoltenWeapon, timeShift);
	local _FireNova, _FireNova_RDY = ConRO:AbilityReady(Ability.FireNova, timeShift);
	local _FlameShock, _FlameShock_RDY = ConRO:AbilityReady(Ability.FlameShock, timeShift + 1);
		local _FlameShock_DEBUFF, _, _FlameShock_DUR = ConRO:TargetAura(Debuff.FlameShock, timeShift);
		local _, _FlameShock_COUNT = ConRO:AnyTargetAura(Debuff.FlameShock);
		local _VoltaicBlaze_BUFF = ConRO:Aura(Buff.VoltaicBlaze, timeShift);
	local _FlametongueWeapon, _FlametongueWeapon_RDY = ConRO:AbilityReady(Ability.FlametongueWeapon, timeShift);
		local _FlametongueWeapon_BUFF, _, _FlametongueWeapon_DUR = ConRO:UnitAura(Buff.FlametongueWeapon, timeShift, _, _, "Weapon");
	local _FrostShock, _FrostShock_RDY, _FrostShock_CD = ConRO:AbilityReady(Ability.FrostShock, timeShift);
		local _, _Hailstorm_COUNT = ConRO:Aura(Buff.Hailstorm, timeShift);
	local _IceStrike, _IceStrike_RDY = ConRO:AbilityReady(Ability.IceStrike, timeShift);
		local _IceStrike_BUFF = ConRO:Aura(Buff.IceStrike, timeShift);
		local _IceStrikeFS_BUFF = ConRO:Aura(Buff.IceStrikeFS, timeShift);
	local _LavaBurst, _LavaBurst_RDY = ConRO:AbilityReady(Ability.LavaBurst, timeShift);
	local _LavaLash, _LavaLash_RDY = ConRO:AbilityReady(Ability.LavaLash, timeShift);
		local _HotHand_BUFF = ConRO:Aura(Buff.HotHand, timeShift);
		local _LashingFlames_DEBUFF	= ConRO:TargetAura(Debuff.LashingFlames, timeShift);
		local _, _AshenCatalyst_COUNT = ConRO:Aura(Buff.AshenCatalyst, timeShift);
	local _LightningBolt, _LightningBolt_RDY = ConRO:AbilityReady(Ability.LightningBolt, timeShift);
		local _, _MaelstromWeapon_COUNT	= ConRO:Aura(Buff.MaelstromWeapon, timeShift);
		local _Tempest_BUFF = ConRO:Aura(Buff.Tempest, timeShift);
	local _LightningShield, _LightningShield_RDY = ConRO:AbilityReady(Ability.LightningShield, timeShift);
		local _LightningShield_BUFF = ConRO:Aura(Buff.LightningShield, timeShift);
	local _Purge, _Purge_RDY = ConRO:AbilityReady(Ability.Purge, timeShift);
	local _PrimalStrike, _PrimalStrike_RDY = ConRO:AbilityReady(Ability.PrimalStrike, timeShift);
	local _PrimordialWave, _PrimordialWave_RDY = ConRO:AbilityReady(Ability.PrimordialWave, timeShift);
		local _PrimordialWave_BUFF = ConRO:Aura(Buff.PrimordialWave, timeShift);
	local _Skyfury, _Skyfury_RDY = ConRO:AbilityReady(Ability.Skyfury, timeShift);
		local _Skyfury_BUFF = ConRO:Aura(Buff.Skyfury, timeShift);	
	local _Stormstrike, _Stormstrike_RDY = ConRO:AbilityReady(Ability.Stormstrike, timeShift);
		local _Stormbringer_BUFF = ConRO:Aura(Buff.Stormbringer, timeShift);
	local _Sundering, _Sundering_RDY = ConRO:AbilityReady(Ability.Sundering, timeShift);
	local _SurgingTotem, _SurgingTotem_RDY = ConRO:AbilityReady(Ability.SurgingTotem, timeShift);
		local _SurgingTotem_ACTIVE = ConRO:Totem(Buff.SurgingTotem);
	local _TotemicProjection, _TotemicProjection_RDY = ConRO:AbilityReady(Ability.TotemicProjection, timeShift);
	local _WindShear, _WindShear_RDY = ConRO:AbilityReady(Ability.WindShear, timeShift);
	local _WindfuryWeapon, _WindfuryWeapon_RDY = ConRO:AbilityReady(Ability.WindfuryWeapon, timeShift);
		local _WindfuryWeapon_BUFF, _, _WindfuryWeapon_DUR = ConRO:UnitAura(Buff.WindfuryWeapon, timeShift, _, _, "Weapon");

--Conditions
	if tChosen[Ability.FlowingSpirits.talentID] then
		_FeralSpirit_RDY = false;
	end

	if ((ConRO_AutoButton:IsVisible() and _enemies_in_10yrds >= 3) or ConRO_AoEButton:IsVisible()) and not _Tempest_BUFF then
		_LightningBolt, _LightningBolt_RDY = ConRO:AbilityReady(Ability.ChainLightning, timeShift);
	end

	if ConRO:HeroSpec(HeroSpec.Stormbringer) and _Tempest_BUFF then
		_LightningBolt, _LightningBolt_RDY = ConRO:AbilityReady(Ability.Tempest, timeShift);
	end

	if _VoltaicBlaze_BUFF then
		_FlameShock, _FlameShock_RDY = ConRO:AbilityReady(Ability.VoltaicBlaze, timeShift);
	end

	if _IceStrike_BUFF then
		_FrostShock, _FrostShock_RDY = ConRO:AbilityReady(Ability.IceStrike40, timeShift);
	end

--Indicators
	ConRO:AbilityInterrupt(_WindShear, _WindShear_RDY and ConRO:Interrupt());
	ConRO:AbilityPurge(_Purge, _Purge_RDY and ConRO:Purgable());

	ConRO:AbilityBurst(_Ascendance, _Ascendance_RDY and not _Stormstrike_RDY and ConRO:BurstMode(_Ascendance));
	ConRO:AbilityBurst(_DoomWinds, _DoomWinds_RDY and ConRO:BurstMode(_DoomWinds));
	ConRO:AbilityBurst(_FeralSpirit, _FeralSpirit_RDY and ConRO:BurstMode(_FeralSpirit));
	ConRO:AbilityBurst(_PrimordialWave, _PrimordialWave_RDY and not _PrimordialWave_BUFF and ConRO:BurstMode(_PrimordialWave));

	ConRO:AbilityRaidBuffs(_Skyfury, _Skyfury_RDY and not ConRO:RaidBuff(Buff.Skyfury));

	ConRO:AbilityRaidBuffs(_EarthShield, _EarthShield_RDY and not ConRO:IsSolo() and not ConRO:OneBuff(Buff.EarthShield));
	ConRO:AbilityRaidBuffs(_LightningShield, _LightningShield_RDY and not _LightningShield_BUFF);
	ConRO:AbilityRaidBuffs(_WindfuryWeapon, _WindfuryWeapon_RDY and not _WindfuryWeapon_BUFF or (not _in_combat and _WindfuryWeapon_DUR < 600));
	ConRO:AbilityRaidBuffs(_FlametongueWeapon, _FlametongueWeapon_RDY and not _FlametongueWeapon_BUFF or (not _in_combat and _FlametongueWeapon_DUR < 600));

--Warnings	

--Rotations
	for i = 1, 2, 1 do
		if ConRO:HeroSpec(HeroSpec.Totemic) then
			if _Sundering_RDY and _target_in_10yrds and _SurgingTotem_ACTIVE and _Ascendance_BUFF then
				tinsert(ConRO.SuggestedSpells, _Sundering);
				_Sundering_RDY = false;
			end

			if _Stormstrike_RDY and _Ascendance_BUFF then
				tinsert(ConRO.SuggestedSpells, _Windstrike);
				_Stormstrike_RDY = false;
			end

			if _FeralSpirit_RDY and ConRO:FullMode(_FeralSpirit) then
				_FeralSpirit_RDY = false;
				tinsert(ConRO.SuggestedSpells, _FeralSpirit);
			end

			if _SurgingTotem_RDY then
				tinsert(ConRO.SuggestedSpells, _SurgingTotem);
				_SurgingTotem_RDY = false;
			end

			if _Sundering_RDY and _target_in_10yrds and _SurgingTotem_ACTIVE then
				tinsert(ConRO.SuggestedSpells, _Sundering);
				_Sundering_RDY = false;
			end

			if _PrimordialWave_RDY then
				tinsert(ConRO.SuggestedSpells, _PrimordialWave);
				_PrimordialWave_RDY = false;
			end

			if _DoomWinds_RDY and ConRO:FullMode(_DoomWinds) then
				tinsert(ConRO.SuggestedSpells, _DoomWinds);
				_DoomWinds_RDY = false;
			end

			if _Ascendance_RDY and ConRO:FullMode(_Ascendance) then
				tinsert(ConRO.SuggestedSpells, _Ascendance);
				_Ascendance_RDY = false;
			end

			if _LavaLash_RDY and _HotHand_BUFF then
				tinsert(ConRO.SuggestedSpells, _LavaLash);
				_LavaLash_RDY = false;
				_HotHand_BUFF = false;
			end

			if _LightningBolt_RDY and _MaelstromWeapon_COUNT >= 8 and _PrimordialWave_BUFF then
				tinsert(ConRO.SuggestedSpells, _LightningBolt);
				_MaelstromWeapon_COUNT = 0;
			end

			if _ElementalBlast_RDY and _MaelstromWeapon_COUNT >= 8 then
				tinsert(ConRO.SuggestedSpells, _ElementalBlast);
				_ElementalBlast_RDY = false;
				_MaelstromWeapon_COUNT = 0;
			end

			if _LightningBolt_RDY and _MaelstromWeapon_COUNT >= 8 then
				tinsert(ConRO.SuggestedSpells, _LightningBolt);
				_MaelstromWeapon_COUNT = 0;
			end

			if _Stormstrike_RDY then
				tinsert(ConRO.SuggestedSpells, _Stormstrike);
				_Stormstrike_RDY = false;
			end

			if _FlameShock_RDY and _VoltaicBlaze_BUFF then
				tinsert(ConRO.SuggestedSpells, _FlameShock);
				_VoltaicBlaze_BUFF = true;
			end

			if _CrashLightning_RDY and _target_in_melee and not _CrashLightning_BUFF then
				tinsert(ConRO.SuggestedSpells, _CrashLightning);
				_CrashLightning_RDY = false;
				_CrashLightning_BUFF = true;
			end

			if _LightningBolt_RDY and _MaelstromWeapon_COUNT >= 5 then
				tinsert(ConRO.SuggestedSpells, _LightningBolt);
				_MaelstromWeapon_COUNT = 0;
			end

			if _IceStrike_RDY then
				tinsert(ConRO.SuggestedSpells, _IceStrike);
				_IceStrike_RDY = false;
			end

			if _FrostShock_RDY and (_IceStrike_BUFF or _Hailstorm_COUNT >= 10) then
				tinsert(ConRO.SuggestedSpells, _FrostShock);
				_FrostShock_RDY = false;
			end

			if _LavaLash_RDY and _FlameShock_DEBUFF then
				tinsert(ConRO.SuggestedSpells, _LavaLash);
				_LavaLash_RDY = false;
			end

			if _FireNova_RDY and _FlameShock_DEBUFF then
				_FireNova_RDY = false;
				tinsert(ConRO.SuggestedSpells, _FireNova);
			end

			if _FlameShock_RDY and not _FlameShock_DEBUFF then
				tinsert(ConRO.SuggestedSpells, _FlameShock);
				_FlameShock_RDY = false;
			end

			if _FrostShock_RDY then
				tinsert(ConRO.SuggestedSpells, _FrostShock);
				_FrostShock_RDY = false;
			end
		else
			if _FeralSpirit_RDY and ConRO:FullMode(_FeralSpirit) then
				_FeralSpirit_RDY = false;
				tinsert(ConRO.SuggestedSpells, _FeralSpirit);
			end

			if _LightningBolt_RDY and _Tempest_BUFF and _MaelstromWeapon_COUNT >= 10 then
				tinsert(ConRO.SuggestedSpells, _LightningBolt);
				_MaelstromWeapon_COUNT = 0;
			end

			if _Stormstrike_RDY and _Ascendance_BUFF then
				tinsert(ConRO.SuggestedSpells, _Windstrike);
				_Stormstrike_RDY = false;
			end

			if _PrimordialWave_RDY then
				tinsert(ConRO.SuggestedSpells, _PrimordialWave);
				_PrimordialWave_RDY = false;
			end

			if _Ascendance_RDY and ConRO:FullMode(_Ascendance) then
				tinsert(ConRO.SuggestedSpells, _Ascendance);
				_Ascendance_RDY = false;
			end

			if _LightningBolt_RDY and _Tempest_BUFF and _MaelstromWeapon_COUNT >= 5 then
				tinsert(ConRO.SuggestedSpells, _LightningBolt);
				_MaelstromWeapon_COUNT = 0;
			end

			if _ElementalBlast_RDY and _MaelstromWeapon_COUNT >= 5 then
				tinsert(ConRO.SuggestedSpells, _ElementalBlast);
				_ElementalBlast_RDY = false;
				_MaelstromWeapon_COUNT = 0;
			end

			if _LightningBolt_RDY and _MaelstromWeapon_COUNT >= 5 then
				tinsert(ConRO.SuggestedSpells, _LightningBolt);
				_MaelstromWeapon_COUNT = 0;
			end

			if _LavaLash_RDY and _HotHand_BUFF then
				tinsert(ConRO.SuggestedSpells, _LavaLash);
				_LavaLash_RDY = false;
				_HotHand_BUFF = false;
			end

			if _DoomWinds_RDY and ConRO:FullMode(_DoomWinds) then
				tinsert(ConRO.SuggestedSpells, _DoomWinds);
				_DoomWinds_RDY = false;
			end

			if _Stormstrike_RDY then
				tinsert(ConRO.SuggestedSpells, _Stormstrike);
				_Stormstrike_RDY = false;
			end

			if _FlameShock_RDY and _VoltaicBlaze_BUFF then
				tinsert(ConRO.SuggestedSpells, _FlameShock);
				_VoltaicBlaze_BUFF = true;
			end

			if _IceStrike_RDY then
				tinsert(ConRO.SuggestedSpells, _IceStrike);
				_IceStrike_RDY = false;
			end

			if _FrostShock_RDY and (_IceStrike_BUFF or _Hailstorm_COUNT >= 10) then
				tinsert(ConRO.SuggestedSpells, _FrostShock);
				_FrostShock_RDY = false;
			end

			if _FlameShock_RDY and not _FlameShock_DEBUFF then
				tinsert(ConRO.SuggestedSpells, _FlameShock);
				_FlameShock_RDY = false;
			end

			if _LavaLash_RDY and _FlameShock_DEBUFF then
				tinsert(ConRO.SuggestedSpells, _LavaLash);
				_LavaLash_RDY = false;
			end

			if _Sundering_RDY and _target_in_10yrds then
				tinsert(ConRO.SuggestedSpells, _Sundering);
				_Sundering_RDY = false;
			end

			if _FireNova_RDY and _FlameShock_DEBUFF then
				_FireNova_RDY = false;
				tinsert(ConRO.SuggestedSpells, _FireNova);
			end

			if _CrashLightning_RDY and _target_in_melee and not _CrashLightning_BUFF then
				tinsert(ConRO.SuggestedSpells, _CrashLightning);
				_CrashLightning_RDY = false;
				_CrashLightning_BUFF = true;
			end
		end
	end
	return nil;
end

function ConRO.Shaman.EnhancementDef(_, timeShift, currentSpell, gcd, tChosen, pvpChosen)
	wipe(ConRO.SuggestedDefSpells);
	ConRO:Stats();
	local Ability, Form, Buff, Debuff, PetAbility, PvPTalent = ids.Enh_Ability, ids.Enh_Form, ids.Enh_Buff, ids.Enh_Debuff, ids.Enh_PetAbility, ids.Enh_PvPTalent;

--Abilities	
	local _AstralShift, _AstralShift_RDY = ConRO:AbilityReady(Ability.AstralShift, timeShift);
	local _EarthElemental, _EarthElemental_RDY = ConRO:AbilityReady(Ability.EarthElemental, timeShift);
	local _EarthShield, _EarthShield_RDY = ConRO:AbilityReady(Ability.EarthShield, timeShift);
		local _EarthShield_BUFF	= ConRO:Aura(Buff.EarthShieldEO, timeShift);
	local _HealingStreamTotem, _HealingStreamTotem_RDY = ConRO:AbilityReady(Ability.HealingStreamTotem, timeShift);
	local _HealingSurge, _HealingSurge_RDY = ConRO:AbilityReady(Ability.HealingSurge, timeShift);
	local _StoneBulwarkTotem, _StoneBulwarkTotem_RDY = ConRO:AbilityReady(Ability.StoneBulwarkTotem, timeShift);

		local _, _MaelstromWeapon_COUNT = ConRO:Aura(Buff.MaelstromWeapon, timeShift);

--Conditions

--Indicators
	ConRO:AbilityBurst(_EarthElemental, _EarthElemental_RDY and ConRO:IsSolo() and ConRO:TarYou());

--Rotations
	if _StoneBulwarkTotem_RDY and _Player_Percent_Health <= 25 then
		tinsert(ConRO.SuggestedDefSpells, _StoneBulwarkTotem);
	end

	if _EarthShield_RDY and not _EarthShield_BUFF and tChosen[Ability.ElementalOrbit.talentID] then
		tinsert(ConRO.SuggestedDefSpells, _EarthShield);
	end

	if _HealingSurge_RDY and _Player_Percent_Health <= 50 and _MaelstromWeapon_COUNT >= 5 then
		tinsert(ConRO.SuggestedDefSpells, _HealingSurge);
	end

	if _HealingStreamTotem_RDY and _Player_Percent_Health <= 75 then
		tinsert(ConRO.SuggestedDefSpells, _HealingStreamTotem);
	end

	if _AstralShift_RDY then
		tinsert(ConRO.SuggestedDefSpells, _AstralShift);
	end

	if _StoneBulwarkTotem_RDY then
		tinsert(ConRO.SuggestedDefSpells, _StoneBulwarkTotem);
	end
	return nil;
end

function ConRO.Shaman.Restoration(_, timeShift, currentSpell, gcd, tChosen, pvpChosen)
	wipe(ConRO.SuggestedSpells);
	ConRO:Stats();
	local Ability, Form, Buff, Debuff, PetAbility, PvPTalent = ids.Resto_Ability, ids.Resto_Form, ids.Resto_Buff, ids.Resto_Debuff, ids.Resto_PetAbility, ids.Resto_PvPTalent;

--Abilities
	local _EarthlivingWeapon, _EarthlivingWeapon_RDY = ConRO:AbilityReady(Ability.EarthlivingWeapon, timeShift);
		local _EarthlivingWeapon_BUFF, _, _EarthlivingWeapon_DUR = ConRO:UnitAura(Buff.EarthlivingWeapon, timeShift, _, _, "Weapon");
	local _Purge, _Purge_RDY = ConRO:AbilityReady(Ability.Purge, timeShift);
	local _WindShear, _WindShear_RDY = ConRO:AbilityReady(Ability.WindShear, timeShift);
	local _LightningBolt, _LightningBolt_RDY = ConRO:AbilityReady(Ability.LightningBolt, timeShift);
	local _ChainLightning, _ChainLightning_RDY = ConRO:AbilityReady(Ability.ChainLightning, timeShift);
	local _EarthElemental, _EarthElemental_RDY, _EarthElemental_CD, _EarthElemental_MaxCD = ConRO:AbilityReady(Ability.EarthElemental, timeShift);
	local _LavaBurst, _LavaBurst_RDY = ConRO:AbilityReady(Ability.LavaBurst, timeShift);
		local _LavaBurst_CHARGES = ConRO:SpellCharges(_LavaBurst);
		local _LavaSurge_BUFF = ConRO:Aura(Buff.LavaSurge, timeShift);
	local _FlameShock, _FlameShock_RDY = ConRO:AbilityReady(Ability.FlameShock, timeShift);
		local _FlameShock_DEBUFF = ConRO:TargetAura(Debuff.FlameShock, timeShift + 6);
	local _HealingRain, _HealingRain_RDY = ConRO:AbilityReady(Ability.HealingRain, timeShift);
	local _HealingStreamTotem, _HealingStreamTotem_RDY = ConRO:AbilityReady(Ability.HealingStreamTotem, timeShift);
	local _EarthShield, _EarthShield_RDY = ConRO:AbilityReady(Ability.EarthShield, timeShift);
		local _EarthShield_BUFF	= ConRO:Aura(Buff.EarthShield, timeShift);
	local _LightningShield, _LightningShield_RDY = ConRO:AbilityReady(Ability.LightningShield, timeShift);
		local _LightningShield_BUFF = ConRO:Aura(Buff.LightningShield, timeShift);
	local _PrimordialWave, _PrimordialWave_RDY = ConRO:AbilityReady(Ability.PrimordialWave, timeShift);
		local _PrimordialWave_BUFF = ConRO:Aura(Buff.PrimordialWave, timeShift);
	local _Skyfury, _Skyfury_RDY = ConRO:AbilityReady(Ability.Skyfury, timeShift);
		local _Skyfury_BUFF = ConRO:Aura(Buff.Skyfury, timeShift);
	local _WaterShield, _WaterShield_RDY = ConRO:AbilityReady(Ability.WaterShield, timeShift);
		local _WaterShield_BUFF = ConRO:Aura(Buff.WaterShield, timeShift);

--Conditions
	if currentSpell == _LavaBurst then
		_LavaBurst_CHARGES = _LavaBurst_CHARGES - 1;
	end

--Indicators
	ConRO:AbilityInterrupt(_WindShear, _WindShear_RDY and ConRO:Interrupt());
	ConRO:AbilityPurge(_Purge, _Purge_RDY and ConRO:Purgable());

	ConRO:AbilityBurst(_EarthElemental, _EarthElemental_RDY and _is_Enemy);
	ConRO:AbilityBurst(_PrimordialWave, _PrimordialWave_RDY and not _PrimordialWave_BUFF and _is_Enemy);

	ConRO:AbilityRaidBuffs(_Skyfury, _Skyfury_RDY and not ConRO:RaidBuff(Buff.Skyfury));

	ConRO:AbilityRaidBuffs(_EarthShield, _EarthShield_RDY and not ConRO:IsSolo() and not ConRO:OneBuff(Buff.EarthShield));
	ConRO:AbilityRaidBuffs(_HealingStreamTotem, _HealingStreamTotem_RDY);
	ConRO:AbilityRaidBuffs(_WaterShield, _WaterShield_RDY and not (_WaterShield_BUFF or _LightningShield_BUFF));
	ConRO:AbilityRaidBuffs(_EarthlivingWeapon, _EarthlivingWeapon_RDY and not _EarthlivingWeapon_BUFF or (not _in_combat and _EarthlivingWeapon_DUR < 600));

--Rotations
	if _is_Enemy then
		for i = 1, 2, 1 do
			if _HealingRain_RDY and tChosen[Ability.AcidRain.talentID] then
				_HealingRain_RDY = false;
				tinsert(ConRO.SuggestedSpells, _HealingRain);
			end

			if _ChainLightning_RDY and ((ConRO_AutoButton:IsVisible() and _enemies_in_10yrds >= 2) or ConRO_AoEButton:IsVisible()) then
				tinsert(ConRO.SuggestedSpells, _ChainLightning);
			end

			if _FlameShock_RDY and not _FlameShock_DEBUFF then
				_FlameShock_DEBUFF = true;
				tinsert(ConRO.SuggestedSpells, _FlameShock);
			end

			if _LavaBurst_RDY and (_LavaBurst_CHARGES >= 1 or _LavaSurge_BUFF) then
				_LavaBurst_CHARGES = _LavaBurst_CHARGES - 1;
				_LavaSurge_BUFF = false;
				tinsert(ConRO.SuggestedSpells, _LavaBurst);
			end

			if _LightningBolt_RDY then
				tinsert(ConRO.SuggestedSpells, _LightningBolt);
			end
		end
	end
	return nil;
end

function ConRO.Shaman.RestorationDef(_, timeShift, currentSpell, gcd, tChosen, pvpChosen)
	wipe(ConRO.SuggestedDefSpells);
	ConRO:Stats();
	local Ability, Form, Buff, Debuff, PetAbility, PvPTalent = ids.Resto_Ability, ids.Resto_Form, ids.Resto_Buff, ids.Resto_Debuff, ids.Resto_PetAbility, ids.Resto_PvPTalent;

--Abilities	
	local _AstralShift, _AstralShift_RDY = ConRO:AbilityReady(Ability.AstralShift, timeShift);
	local _EarthElemental, _EarthElemental_RDY = ConRO:AbilityReady(Ability.EarthElemental, timeShift);
	local _EarthShield, _EarthShield_RDY = ConRO:AbilityReady(Ability.EarthShield, timeShift);
		local _EarthShield_BUFF	= ConRO:Aura(Buff.EarthShieldEO, timeShift);
	local _HealingStreamTotem, _HealingStreamTotem_RDY = ConRO:AbilityReady(Ability.HealingStreamTotem, timeShift);
	local _HealingSurge, _HealingSurge_RDY = ConRO:AbilityReady(Ability.HealingSurge, timeShift);
	local _StoneBulwarkTotem, _StoneBulwarkTotem_RDY = ConRO:AbilityReady(Ability.StoneBulwarkTotem, timeShift);

--Conditions
	if tChosen[Ability.CloudburstTotem.talentID] then
		_HealingStreamTotem, _HealingStreamTotem_RDY = ConRO:AbilityReady(Ability.CloudburstTotem, timeShift);
	end

--Indicators
	ConRO:AbilityBurst(_EarthElemental, _EarthElemental_RDY and ConRO:IsSolo() and ConRO:TarYou());

--Rotations
	if _StoneBulwarkTotem_RDY and _Player_Percent_Health <= 25 then
		tinsert(ConRO.SuggestedDefSpells, _StoneBulwarkTotem);
	end

	if _EarthShield_RDY and not _EarthShield_BUFF and tChosen[Ability.ElementalOrbit.talentID] then
		tinsert(ConRO.SuggestedDefSpells, _EarthShield);
	end

	if _HealingSurge_RDY and _Player_Percent_Health <= 50 then
		tinsert(ConRO.SuggestedDefSpells, _HealingSurge);
	end

	if _HealingStreamTotem_RDY and _Player_Percent_Health <= 75 then
		tinsert(ConRO.SuggestedDefSpells, _HealingStreamTotem);
	end

	if _AstralShift_RDY then
		tinsert(ConRO.SuggestedDefSpells, _AstralShift);
	end

	if _StoneBulwarkTotem_RDY then
		tinsert(ConRO.SuggestedDefSpells, _StoneBulwarkTotem);
	end
	return nil;
end