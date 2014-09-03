local mod	= DBM:NewMod(1196, "DBM-Highmaul", nil, 477)
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision$"):sub(12, -3))
mod:SetCreatureID(78491)
mod:SetEncounterID(1720)
mod:SetZone()

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_CAST_START 159996 160013 159219",
	"SPELL_CAST_SUCCESS 163594",
	"SPELL_AURA_APPLIED 163241 164125",
	"SPELL_AURA_APPLIED_DOSE 163241",
	"UNIT_DIED",
	"UNIT_SPELLCAST_SUCCEEDED boss1"
)

--TODO, see if exploding fungus are in combat log (none of his other mushrooms are, so pretty safe to assume neither is this one)
--TODO, see how they even work, who they target, if they are killed or just avoided.
--TODO, verify only one spore shooter spawns at a time
local warnCreepingMoss				= mod:NewTargetAnnounce(164125, 4, nil, mod:IsTank())--Persists whole fight, so just warn if boss gets it to move it
local warnInfestingSpores			= mod:NewSpellAnnounce(159996, 3)
local warnDecay						= mod:NewSpellAnnounce(160013, 4)
local warnNecroticBreath			= mod:NewSpellAnnounce(159219, 4, nil, mod:IsHealer() or mod:IsTank())
local warnRot						= mod:NewStackAnnounce(163241, 2, nil, mod:IsTank())
--Adds/Mushrooms
local warnSporeShooter				= mod:NewSpellAnnounce(163594, 3, nil, mod:IsDps())
local warnFungalFlesheater			= mod:NewSpellAnnounce("ej9995", 4, 163142)--Using ej name because it doesn't match spell name at all like others
local warnMindFungus				= mod:NewSpellAnnounce(163141, 2, nil, mod:IsDps())
local warnLivingMushroom			= mod:NewSpellAnnounce(160022, 1)--Good shroom! (mana)
local warnRejuvMushroom				= mod:NewSpellAnnounce(160021, 1)--Other good shroom (healing)
local warnExplodingFungus			= mod:NewSpellAnnounce(163794, 4)--Mythic Shroom

local specWarnCreepingMoss			= mod:NewSpecialWarningMove(163590, mod:IsTank())
local specWarnInfestingSpores		= mod:NewSpecialWarningSpell(159996, nil, nil, nil, 2)
local specWarnDecay					= mod:NewSpecialWarningInterrupt(160013, not mod:IsHealer())
local specWarnNecroticBreath		= mod:NewSpecialWarningSpell(159219, mod:IsTank(), nil, nil, 3)
local specWarnRot					= mod:NewSpecialWarningStack(163241, nil, 5)--stack guessed, based on low debuff damage, assumed to be a fast stacker, like malkorak
local specWarnRotOther				= mod:NewSpecialWarningTaunt(163241)
local specWarnInfestingSpores		= mod:NewSpecialWarningSpell(163794, nil, nil, nil, 2)--Change warning type/sound? need to know more about spawn.
--Adds
local specWarnSporeShooter			= mod:NewSpecialWarningSwitch(163594, mod:IsDps())
local specWarnFungalFlesheater		= mod:NewSpecialWarningSwitch("ej9995")
local specWarnMindFungus			= mod:NewSpecialWarningSwitch(163141, mod:IsDps())

local timerInfestingSporesCD		= mod:NewNextTimer(103, 159996)
local timerNecroticBreathCD			= mod:NewCDTimer(30, 159219, nil, mod:IsTank() or mod:IsHealer())
--Adds (all adds are actually NEXT timers however they get dleayed by infesting spores and necrotic breath sometimes so i'm leaving as CD for now)
local timerSporeShooterCD			= mod:NewCDTimer(60, 163594, nil, mod:IsDps())
local timerFungalFleshEaterCD		= mod:NewCDTimer(120, "ej9995")
local timerMindFungusCD				= mod:NewCDTimer(30, 163141, nil, mod:IsDps())
local timerLivingMushroomCD			= mod:NewCDTimer(60, 160022)
local timerRejuvMushroomCD			= mod:NewCDTimer(145, 160021)
--local timerExplodingFungusCD		= mod:NewCDTimer(30, 163794)

mod:AddRangeFrameOption(8, 160254, mod:IsRanged())

mod.vb.sporesAlive = 0

function mod:OnCombatStart(delay)
	self.vb.sporesAlive = 0
	timerMindFungusCD:Start(10-delay)
	timerSporeShooterCD:Start(20-delay)
	timerNecroticBreathCD:Start(-delay)
	timerFungalFleshEaterCD:Start(34-delay)
	timerLivingMushroomCD:Start(-delay)
	timerRejuvMushroomCD:Start(80-delay)
	timerInfestingSporesCD:Start(90-delay)
end

function mod:OnCombatEnd()
	if self.Options.RangeFrame then
		DBM.RangeCheck:Hide()
	end
end

function mod:SPELL_CAST_START(args)
	local spellId = args.spellId
	if spellId == 159996 then
		warnInfestingSpores:Show()
		specWarnInfestingSpores:Show()
		timerInfestingSporesCD:Start()
	elseif spellId == 160013 then
		warnDecay:Show()
		specWarnDecay:Show(args.sourceName)
	elseif spellId == 159219 then
		warnNecroticBreath:Show()
		specWarnNecroticBreath:Show()
		timerNecroticBreathCD:Start()
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	local spellId = args.spellId
	if spellId == 163594 then
		self.vb.sporesAlive = self.vb.sporesAlive + 1
		warnSporeShooter:Show()
		specWarnSporeShooter:Show()
		timerSporeShooterCD:Start()
		if self.Options.RangeFrame then
			DBM.RangeCheck:Show(8)
		end
	end
end

function mod:SPELL_AURA_APPLIED(args)
	local spellId = args.spellId
	if spellId == 163241 then
		local amount = args.amount or 1
		warnRot:Show(args.destName, amount)
		if amount >= 5 then
			if args:IsPlayer() then--At this point the other tank SHOULD be clear.
				specWarnRot:Show(amount)
			else--Taunt as soon as stacks are clear, regardless of stack count.
				if not UnitDebuff("player", GetSpellInfo(163241)) and not UnitIsDeadOrGhost("player") then
					specWarnRotOther:Show(args.destName)
				end
			end
		end
	elseif spellId == 164125 and args:GetDestCreatureID() == 78491 then
		warnCreepingMoss:Show(args.destName)
		specWarnCreepingMoss:Show()
	end
end
mod.SPELL_AURA_APPLIED_DOSE = mod.SPELL_AURA_APPLIED

function mod:UNIT_DIED(args)
	local cid = self:GetCIDFromGUID(args.destGUID)
	if cid == 79183 then--Spore Shooter
		self.vb.sporesAlive = self.vb.sporesAlive - 1
		if self.Options.RangeFrame and self.vb.sporesAlive == 0 then
			DBM.RangeCheck:Hide()
		end
	end
end

function mod:UNIT_SPELLCAST_SUCCEEDED(uId, _, _, _, spellId)
	if spellId == 163141 then
		warnMindFungus:Show()
		specWarnMindFungus:Show()
		timerMindFungusCD:Start()
	elseif spellId == 163142 then
		warnFungalFlesheater:Show()
		specWarnFungalFlesheater:Show()
		timerFungalFleshEaterCD:Start()
	elseif spellId == 160022 then
		warnLivingMushroom:Show()
		timerLivingMushroomCD:Start()
	elseif spellId == 160021 then
		warnRejuvMushroom:Show()
		timerRejuvMushroomCD:Start()
	elseif spellId == 163794 then
		warnExplodingFungus:Show()
--		timerExplodingFungusCD:Start()
	end
end
