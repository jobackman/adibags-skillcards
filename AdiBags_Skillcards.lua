local AdiBags = LibStub("AceAddon-3.0"):GetAddon("AdiBags")

local log = function(...)
  ViragDevTool_AddData(...)
end

do
  local SkillcardFilter = AdiBags:RegisterFilter("Skillcard", 90, function(self, slotData)
    if string.match(slotData.name, "^Skill Card") then
      return "Skillcard"
    end
  end)
  SkillcardFilter.uiName = "Skillcard"
  SkillcardFilter.uiDesc = "Puts skillcard items in their own section"
end

do
  local SkillcardFilter = AdiBags:RegisterFilter("Golden skillcard", 90, function(self, slotData)
    if string.match(slotData.name, "^Golden Skill Card") then
      return "Golden Skillcard"
    end
  end)
  SkillcardFilter.uiName = "Golden skillcard"
  SkillcardFilter.uiDesc = "Puts golden skillcard items in their own section"
end
