local mod	= DBM:NewMod(684, "DBM-Party-MoP", 7, 246)
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision$"):sub(12, -3))
mod:SetCreatureID(59080)
--mod:SetModelID(40322)
mod:SetZone()

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_AURA_APPLIED",
	"RAID_BOSS_EMOTE"
)

local warnLesson		= mod:NewSpellAnnounce(113395, 4)--Needs to be changed to target when transcriptor works, at present CLEU doesn't show anything.
local warnRise			= mod:NewSpellAnnounce(113143, 3)

local timerLessonCD		= mod:NewNextTimer(31.25, 113395)
local timerRiseCD		= mod:NewNextTimer(62.5, 113143)--Assuming this is even CD based, it could be boss health based, in which case timer is worthless

function mod:OnCombatStart(delay)
	timerLessonCD:Start(17-delay)
	timerRiseCD:Start(48-delay)--Assumed based off a single log. This may be health based.
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpellID(113143) then
		warnRise:Show()
		timerRiseCD:Start()
	end
end

function mod:RAID_BOSS_EMOTE(msg)--Just until there is a better way
	if msg == L.HarshLesson or msg:find(L.HarshLesson) then
		warnLesson:Show()
		timerLessonCD:Start()
	end
end