local mod	= DBM:NewMod("Nefarian-BD", "DBM-BlackwingDescent", 6)
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision$"):sub(12, -3))
mod:SetCreatureID(41376)
mod:SetZone()

mod:RegisterCombat("combat")

mod:RegisterEvents(
	"SPELL_CAST_START",
	"SPELL_DAMAGE",
	"SPELL_SUMMON",
	"UNIT_DIED",
	"CHAT_MSG_MONSTER_YELL"
)

local warnShadowflameBreath		= mod:NewSpellAnnounce(94124, 3)	-- random timers ? :S
local warnShadowflameBarrage	= mod:NewSpellAnnounce(78621, 3)
local warnBlastNova				= mod:NewSpellAnnounce(80734, 3)
local warnHailBones				= mod:NewSpellAnnounce(94104, 3, nil, false)	-- spams a lot (every ~2sec a new one spawns)
local warnPhase2				= mod:NewPhaseAnnounce(2)
local warnPhase3				= mod:NewPhaseAnnounce(3)

local timerBlastNova			= mod:NewCastTimer(1.5, 80734)
local timerShadowflameBarrage	= mod:NewCDTimer(180, 78621)
local timerShadowBlazeCD		= mod:NewCDTimer(10, 94085)

local specWarnShadowblaze		= mod:NewSpecialWarningMove(94085)
local specWarnBlastsNova		= mod:NewSpecialWarningInterrupt(80734)

local deaths = 0
local spamHailBones = 0
local spamShadowblaze = 0
local shadowblazeTimer = 30

function mod:OnCombatStart(delay)
	deaths = 0
	spamHailBones = 0
	spamShadowblaze = 0
	shadowblazeTimer = 30
end

function mod:SPELL_CAST_START(args)
	if args:IsSpellID(77826, 94124, 94125, 94126) then--Some drycoded spellids from wowhead
		warnShadowflameBreath:Show()
	elseif args:IsSpellID(80734) then
		warnBlastNova:Show()
		specWarnBlastsNova:Show()
		timerBlastNova:Start()
	elseif args:IsSpellID(78621, 94121, 94122, 94123) then
		warnShadowflameBarrage:Show()
--		timerShadowflameBarrage:Start()
	end
end

function mod:SPELL_DAMAGE(args)
	if args:IsPlayer() and args:IsSpellID(81007, 94085, 94086, 94087) and GetTime() - spamShadowblaze > 5 then--Drycodes
		specWarnShadowblaze:Show()
		spamShadowblaze = GetTime()
	end
end

function mod:SPELL_SUMMON(args)
	if args:IsSpellID(78684, 94104, 94105, 94106) and GetTime() - spamHailBones > 5 then		-- reduces spam a little, still spamming a lot
		warnHailBones:Show()
		spamHailBones = GetTime()
	end
end

function mod:UNIT_DIED(args)
	if args.destName == L.ChromaticPrototype then
		deaths = deaths + 1
		if deaths == 3 then
			warnPhase3:Show()
			timerShadowflameBarrage:Cancel()
			timerShadowBlazeCD:Start()
		end
	end
end

function mod:CHAT_MSG_MONSTER_YELL(msg)
	if msg == L.YellPhase2 then
		warnPhase2:Show()
		timerShadowflameBarrage:Start()
	elseif msg == L.ShadowblazeCast then
	
	end
end