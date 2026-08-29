-- ============================================================================
-- SimpleDenyManager - WoW 1.12.1 Addon for Microbot Server (Block 1 von 6)
-- ============================================================================
SimpleDeny_States = nil
ClassSpells = {}

ClassSpells["Warrior"] = { 
    "Heroic Strike", "Rend", "Thunder Clap", "Charge", "Shield Bash", 
    "Demoralizing Shout", "Overpower", "Execute", "Mortal Strike", "Bloodthirst",
    "Sunder Armor", "Revenge", "Taunt", "Shield Block", "Disarm", 
    "Hamstring", "Pummel", "Whirlwind", "Sweeping Strikes", "Cleave",
    "Battle Shout", "Bloodrage", "Mocking Blow", "Challenging Shout", "Intercept",
    "Slam", "Death Wish", "Concussive Blow", "Shield Slam", "Retaliation",
    "Recklessness", "Shield Wall", "Intimidating Shout", "Piercing Howl", "Berserker Rage"
}
ClassSpells["Paladin"] = { 
    "Holy Light", "Flash of Light", "Greater Heal", "Lay on Hands",
    "Blessing of Might", "Blessing of Wisdom", "Blessing of Kings", "Blessing of Sanctuary", 
    "Blessing of Salvation", "Blessing of Light", "Blessing of Protection", "Blessing of Freedom",
    "Seal of Righteousness", "Seal of Command", "Seal of Light", "Seal of Wisdom", "Seal of Justice", "Seal of the Crusader",
    "Judgement", "Hammer of Justice", "Consecration", "Exorcism", "Holy Wrath", "Holy Shock",
    "Divine Shield", "Divine Protection", "Divine Favor", "Cleanse", "Purify", "Retribution Aura",
    "Devotion Aura", "Concentration Aura", "Shadow Resistance Aura", "Frost Resistance Aura", "Fire Resistance Aura", "Sanctity Aura"
}
-- ============================================================================
-- SimpleDenyManager - WoW 1.12.1 Addon for Microbot Server (Block 2 von 6)
-- ============================================================================
ClassSpells["Hunter"] = { 
    "Arcane Shot", "Serpent Sting", "Concussive Shot", "Multi-Shot", "Aimed Shot", 
    "Auto Shot", "Raptor Strike", "Mongoose Bite", "Volley", "Scatter Shot",
    "Aspect of the Hawk", "Aspect of the Monkey", "Aspect of the Cheetah", "Aspect of the Pack", "Aspect of the Wild", "Aspect of the Beast",
    "Hunter's Mark", "Scorpid Sting", "Viper Sting", "Wing Clip", "Distracting Shot",
    "Explosive Trap", "Immolation Trap", "Freezing Trap", "Frost Trap", "Feign Death",
    "Mend Pet", "Feed Pet", "Revive Pet", "Call Pet", "Dismiss Pet", "Tame Beast",
    "Bestial Wrath", "Intimidation", "Trueshot Aura", "Deterrence", "Counterattack", "Scare Beast"
}
ClassSpells["Rogue"] = { 
    "Sinister Strike", "Eviscerate", "Slice and Dice", "Backstab", "Gouge", 
    "Kidney Shot", "Ambush", "Cheap Shot", "Feint", "Garrote",
    "Rupture", "Expose Armor", "Kick", "Blind", "Evasion", 
    "Vanish", "Sprint", "Adrenaline Rush", "Blade Flurry", "Cold Blood",
    "Ghostly Strike", "Riposte", "Hemmorhage", "Premeditation", "Distract",
    "Safe Fall", "Pick Pocket", "Pick Lock", "Disarm Trap", "Detect Traps"
}
-- ============================================================================
-- SimpleDenyManager - WoW 1.12.1 Addon for Microbot Server (Block 3 von 6)
-- ============================================================================
ClassSpells["Priest"] = { 
    "Lesser Heal", "Heal", "Flash Heal", "Greater Heal", "Renew", "Prayer of Healing",
    "Power Word: Shield", "Power Word: Fortitude", "Divine Spirit", "Shadow Protection",
    "Smite", "Mind Blast", "Shadow Word: Pain", "Mind Flay", "Holy Fire", "Holy Nova",
    "Starshards", "Devouring Plague", "Vampiric Embrace", "Shadowform", "Mind Control",
    "Psychic Scream", "Fade", "Dispel Magic", "Cure Disease", "Abolish Disease",
    "Shackle Undead", "Inner Fire", "Mana Burn", "Levitate", "Resurrection", "Desperate Prayer"
}
ClassSpells["Shaman"] = { 
    "Healing Wave", "Lesser Healing Wave", "Chain Heal", "Ancestral Spirit",
    "Lightning Bolt", "Chain Lightning", "Earth Shock", "Flame Shock", "Frost Shock", 
    "Stormstrike", "Lightning Shield", "Rockbiter Weapon", "Flametongue Weapon", "Frostbrand Weapon", "Windfury Weapon",
    "Healing Stream Totem", "Mana Spring Totem", "Mana Tide Totem", "Healing Way",
    "Searing Totem", "Magma Totem", "Fire Nova Totem", "Flametongue Totem", "Frost Resistance Totem",
    "Earthbind Totem", "Stoneclaw Totem", "Stoneskin Totem", "Strength of Earth Totem", "Earth Element Totem",
    "Grace of Air Totem", "Windfury Totem", "Windwall Totem", "Nature Resistance Totem", "Grounding Totem",
    "Purge", "Cleanse Poison", "Cleanse Disease", "Tremor Totem", "Poison Cleansing Totem"
}
-- ============================================================================
-- SimpleDenyManager - WoW 1.12.1 Addon for Microbot Server (Block 4 von 6)
-- ============================================================================
ClassSpells["Mage"] = { 
    "Frostbolt", "Fireball", "Arcane Missiles", "Fire Blast", "Cone of Cold", 
    "Blizzard", "Arcane Explosion", "Pyroblast", "Scorch", "Flamestrike",
    "Polymorph", "Counterspell", "Evocation", "Blink", "Ice Block",
    "Arcane Intellect", "Dampen Magic", "Amplify Magic", "Mage Armor", "Ice Armor", 
    "Frost Armor", "Ice Barrier", "Mana Shield", "Fire Ward", "Frost Ward",
    "Remove Lesser Curse", "Slow Fall", "Conjure Water", "Conjure Food", "Conjure Mana Ruby",
    "Blast Wave", "Combustion", "Presence of Mind", "Arcane Power"
}
ClassSpells["Warlock"] = { 
    "Shadow Bolt", "Corruption", "Immolate", "Siphon Life", "Curse of Agony", 
    "Curse of Shadow", "Curse of Elements", "Curse of Recklessness", "Curse of Weakness", "Curse of Tongues",
    "Fear", "Howl of Terror", "Death Coil", "Life Tap", "Drain Life", "Drain Soul", "Drain Mana",
    "Hellfire", "Rain of Fire", "Shadowburn", "Conflagrate", "Amplify Curse",
    "Health Funnel", "Create Healthstone", "Create Soulstone", "Create Spellstone", "Create Firestone",
    "Summon Imp", "Summon Voidwalker", "Summon Succubus", "Summon Felhunter", "Summon Tyran", "Banish", "Enslave Demon"
}
ClassSpells["Druid"] = { 
    "Healing Touch", "Regrowth", "Rejuvenation", "Tranquility", "Swiftmend",
    "Wrath", "Starfire", "Moonfire", "Insect Swarm", "Entangling Roots",
    "Bear Form", "Dire Bear Form", "Cat Form", "Travel Form", "Aquatic Form",
    "Demoralizing Roar", "Maul", "Swipe", "Growl", "Bash", "Frenzied Regeneration",
    "Claw", "Rake", "Shred", "Rip", "Ferocious Bite", "Cower", "Pounce", "Ravage",
    "Mark of the Wild", "Thorns", "Omen of Clarity", "Barkskin", "Nature's Swiftness",
    "Remove Poison", "Abolish Poison", "Remove Curse", "Rebirth", "Innervate", "Hibernate"
}
-- ============================================================================
-- SimpleDenyManager - WoW 1.12.1 Addon for Microbot Server (Block 5 von 6)
-- ============================================================================
local ClassColors = {
    ["Warrior"] = { r = 0.78, g = 0.61, b = 0.43 }, ["Paladin"] = { r = 0.96, g = 0.55, b = 0.73 },
    ["Hunter"]  = { r = 0.67, g = 0.83, b = 0.45 }, ["Rogue"]   = { r = 1.00, g = 0.96, b = 0.41 },
    ["Priest"]  = { r = 1.00, g = 1.00, b = 1.00 }, ["Shaman"]  = { r = 0.00, g = 0.44, b = 0.87 },
    ["Mage"]    = { r = 0.41, g = 0.80, b = 0.94 }, ["Warlock"] = { r = 0.58, g = 0.51, b = 0.79 },
    ["Druid"]   = { r = 1.00, g = 0.49, b = 0.04 },
}

local LocalizedClasses = {
    ["KRIEGER"] = "Warrior", ["PALADIN"] = "Paladin", ["JÄGER"] = "Hunter",
    ["SCHURKE"] = "Rogue", ["PRIESTER"] = "Priest", ["SCHAMANE"] = "Shaman",
    ["MAGIER"] = "Mage", ["HEXENMEISTER"] = "Warlock", ["DRUIDE"] = "Druid"
}

local selectedClass, isGlobalResetActive, isDeactivateAllActive = nil, false, false
local spellButtons, classButtons, ResetClassButton, DeactivateAllButton, ResetAllButton = {}, {}, nil, nil, nil
local COMM_FRAME, EVENT_FRAME = CreateFrame("Frame", "SDM_CommFrame", UIParent), CreateFrame("Frame", "SDM_EventFrame", UIParent)
EVENT_FRAME:RegisterEvent("CHAT_MSG_ADDON") EVENT_FRAME:RegisterEvent("ADDON_LOADED")
local pendingSpell, pendingAction = nil, nil

local function SendServerQuery(arg)
    COMM_FRAME:SetScript("OnUpdate", function()
        SendAddonMessage("nexus", arg, "BATTLEGROUND")
        COMM_FRAME:SetScript("OnUpdate", nil)
    end)
end

local MainFrame = CreateFrame("Frame", "SimpleDenyManagerFrame", UIParent)
MainFrame:SetWidth(620) MainFrame:SetHeight(520) MainFrame:SetPoint("CENTER", UIParent, "CENTER", 0, 0)
MainFrame:SetBackdrop({
    bgFile = "Interface\\ChatFrame\\ChatFrameBackground", edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
    tile = true, tileSize = 16, edgeSize = 16, insets = { left = 4, right = 4, top = 4, bottom = 4 }
})
MainFrame:SetBackdropColor(0, 0, 0, 0.85) MainFrame:EnableMouse(true) MainFrame:SetMovable(true) MainFrame:RegisterForDrag("LeftButton")
MainFrame:SetScript("OnDragStart", function() this:StartMoving() end) MainFrame:SetScript("OnDragStop", function() this:StopMovingOrSizing() end)
MainFrame:Hide()

local Title = MainFrame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
Title:SetPoint("TOP", MainFrame, "TOP", 0, -12) Title:SetText("Simple Deny Manager")
local CloseButton = CreateFrame("Button", nil, MainFrame, "UIPanelCloseButton")
CloseButton:SetPoint("TOPRIGHT", MainFrame, "TOPRIGHT", -5, -5) CloseButton:SetScript("OnClick", function() MainFrame:Hide() end)
local BackButton = CreateFrame("Button", nil, MainFrame, "UIPanelButtonTemplate")
BackButton:SetWidth(90) BackButton:SetHeight(24) BackButton:SetPoint("BOTTOMLEFT", MainFrame, "BOTTOMLEFT", 12, 12) BackButton:SetText("Back") BackButton:Hide()
local ShowClassMenu, UpdateSpellMenu = nil, nil

local function SetButtonColor(button, r, g, b)
    button:SetBackdrop({
        bgFile = "Interface\\ChatFrame\\ChatFrameBackground", edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
        edgeSize = 12, insets = { left = 2, right = 2, top = 2, bottom = 2 }
    })
    button:SetBackdropColor(r, g, b, 1)
end

local function ToggleMainFrame()
    if not SimpleDenyManagerFrame then return end
    if SimpleDenyManagerFrame:IsVisible() then SimpleDenyManagerFrame:Hide() else ShowClassMenu() SimpleDenyManagerFrame:Show() end
end
-- ============================================================================
-- SimpleDenyManager - WoW 1.12.1 Addon for Microbot Server (Block 6 von 6)
-- ============================================================================
local function OnSpellClick()
    local spellName = this.spellName
    if not spellName then return end
    if SimpleDeny_States[spellName] == "grey" then
        SimpleDeny_States[spellName] = "red" pendingAction = "remove" SetButtonColor(this, 0.7, 0.2, 0.2) 
    else
        SimpleDeny_States[spellName] = "grey" pendingAction = "add" SetButtonColor(this, 0.4, 0.4, 0.4) 
    end
    pendingSpell = spellName isGlobalResetActive, isDeactivateAllActive = false, false SendServerQuery("GRINFO:SELF:FULL")
end

local function OnResetClassClick()
    local spells = ClassSpells[selectedClass]
    if spells then for _, name in ipairs(spells) do SimpleDeny_States[name] = "red" end end
    UpdateSpellMenu() pendingAction, pendingSpell, isGlobalResetActive, isDeactivateAllActive = "remove", "all", false, false SendServerQuery("GRINFO:SELF:FULL")
end

local function OnDeactivateAllClick()
    local spells = ClassSpells[selectedClass]
    if spells then for _, name in ipairs(spells) do SimpleDeny_States[name] = "grey" end end
    UpdateSpellMenu() pendingAction, isGlobalResetActive, isDeactivateAllActive = "add", false, true SendServerQuery("GRINFO:SELF:FULL")
end

local function OnResetAllClick()
    for _, list in pairs(ClassSpells) do for _, name in ipairs(list) do SimpleDeny_States[name] = "red" end end
    pendingAction, pendingSpell, isGlobalResetActive, isDeactivateAllActive = "remove", "all", true, false SendServerQuery("GRINFO:SELF:FULL")
end

local function OnClassClick()
    selectedClass = this.classKey classButtons[selectedClass] = this
    for _, btn in pairs(classButtons) do btn:Hide() end
    if ResetAllButton then ResetAllButton:Hide() end
    BackButton:Show() UpdateSpellMenu()
end
UpdateSpellMenu = function()
    for _, btn in ipairs(spellButtons) do btn:Hide() end
    spellButtons = {} local spells = ClassSpells[selectedClass]
    if not spells then return end table.sort(spells)
    if not DeactivateAllButton then
        DeactivateAllButton = CreateFrame("Button", nil, MainFrame)
        DeactivateAllButton:SetWidth(588) DeactivateAllButton:SetHeight(34) DeactivateAllButton:SetPoint("TOPLEFT", MainFrame, "TOPLEFT", 16, -42)
        DeactivateAllButton.text = DeactivateAllButton:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
        DeactivateAllButton.text:SetPoint("CENTER", DeactivateAllButton, "CENTER", 0, 0) DeactivateAllButton.text:SetText("Deactivate All Spells")
        SetButtonColor(DeactivateAllButton, 0.4, 0.4, 0.4) DeactivateAllButton:SetScript("OnClick", OnDeactivateAllClick)
    end
    DeactivateAllButton:Show()
    local maxRows = 0
    for i, spellName in ipairs(spells) do
        local btn = CreateFrame("Button", nil, MainFrame) btn:SetWidth(140) btn:SetHeight(32)   
        local val = i - 1 local col = val - (math.floor(val / 4) * 4) local row = math.floor(val / 4)
        if row > maxRows then maxRows = row end btn:SetPoint("TOPLEFT", MainFrame, "TOPLEFT", 16 + (col * 149), -90 - (row * 38))
        btn.text = btn:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall") btn.text:SetPoint("CENTER", btn, "CENTER", 0, 0)
        if string.len(spellName) > 19 then btn.text:SetText(string.sub(spellName, 1, 17) .. "..") else btn.text:SetText(spellName) end
        btn.spellName = spellName btn:SetScript("OnClick", OnSpellClick)
        if SimpleDeny_States[spellName] == "grey" then SetButtonColor(btn, 0.4, 0.4, 0.4) else SetButtonColor(btn, 0.7, 0.2, 0.2) end
        table.insert(spellButtons, btn) btn:Show()
    end
    if not ResetClassButton then
        ResetClassButton = CreateFrame("Button", nil, MainFrame) ResetClassButton:SetWidth(588) ResetClassButton:SetHeight(34)
        ResetClassButton.text = ResetClassButton:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
        ResetClassButton.text:SetPoint("CENTER", ResetClassButton, "CENTER", 0, 0) ResetClassButton.text:SetText("Reset Class Spells")
        SetButtonColor(ResetClassButton, 0.5, 0.1, 0.1) ResetClassButton:SetScript("OnClick", OnResetClassClick)
    end
    ResetClassButton:ClearAllPoints() ResetClassButton:SetPoint("TOPLEFT", MainFrame, "TOPLEFT", 16, -100 - ((maxRows + 1) * 38)) ResetClassButton:Show()
    local calculatedHeight = 160 + ((maxRows + 2) * 38)
    if calculatedHeight < 480 then calculatedHeight = 480 end MainFrame:SetHeight(calculatedHeight)
end
ShowClassMenu = function()
    selectedClass = nil BackButton:Hide() if ResetClassButton then ResetClassButton:Hide() end if DeactivateAllButton then DeactivateAllButton:Hide() end
    MainFrame:SetHeight(500) for _, btn in ipairs(spellButtons) do btn:Hide() end for _, btn in pairs(classButtons) do btn:Show() end
    if ResetAllButton then ResetAllButton:Show() end
end
BackButton:SetScript("OnClick", ShowClassMenu)

local function CreateClassButtons()
    local index = 0
    for classKey, _ in pairs(ClassSpells) do
        local btn = CreateFrame("Button", nil, MainFrame) btn:SetWidth(270) btn:SetHeight(44) 
        local col = index - (math.floor(index / 2) * 2) local row = math.floor(index / 2)
        btn:SetPoint("TOPLEFT", MainFrame, "TOPLEFT", 26 + (col * 295), -65 - (row * 56))
        btn.text = btn:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge") btn.text:SetPoint("CENTER", btn, "CENTER", 0, 0)
        if classKey == "Priest" or classKey == "Paladin" or classKey == "Rogue" then btn.text:SetTextColor(0, 0, 0) else btn.text:SetTextColor(1, 0.82, 0) end
        btn.text:SetText(classKey) local colors = ClassColors[classKey]
        if colors then SetButtonColor(btn, colors.r, colors.g, colors.b) else SetButtonColor(btn, 0.7, 0.2, 0.2) end
        btn.classKey = classKey btn:SetScript("OnClick", OnClassClick) classButtons[classKey] = btn index = index + 1
    end
    if not ResetAllButton then
        ResetAllButton = CreateFrame("Button", nil, MainFrame) ResetAllButton:SetWidth(566) ResetAllButton:SetHeight(40) ResetAllButton:SetPoint("TOPLEFT", MainFrame, "TOPLEFT", 26, -345)
        ResetAllButton.text = ResetAllButton:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge") ResetAllButton.text:SetPoint("CENTER", ResetAllButton, "CENTER", 0, 0)
        ResetAllButton.text:SetText("Reset All Classes") ResetAllButton.text:SetTextColor(1, 1, 1) SetButtonColor(ResetAllButton, 0.5, 0.1, 0.1) ResetAllButton:SetScript("OnClick", OnResetAllClick)
    end
end

local function CreateMinimapButton()
    local button = CreateFrame("Button", "SDM_MinimapButton", Minimap) button:SetWidth(33) button:SetHeight(33) button:SetFrameLevel(MiniMapTrackingFrame:GetFrameLevel() + 1)
    button:EnableMouse(true) button:SetMovable(true) local icon = button:CreateTexture(nil, "BACKGROUND")
    icon:SetWidth(21) icon:SetHeight(21) icon:SetTexture("Interface\\Icons\\INV_Misc_Gear_01") icon:SetPoint("TOPLEFT", button, "TOPLEFT", 6, -6)
    local border = button:CreateTexture(nil, "OVERLAY") border:SetWidth(56) border:SetHeight(56) border:SetTexture("Interface\\Minimap\\MiniMap-TrackingBorder") border:SetPoint("TOPLEFT", button, "TOPLEFT", 0, 0)
    local function UpdatePosition()
        local angle = SimpleDeny_States.MinimapAngle or 0 button:ClearAllPoints() button:SetPoint("TOPLEFT", Minimap, "TOPLEFT", 52 - (80 * math.cos(angle)), (80 * math.sin(angle)) - 52)
    end
    button:RegisterForDrag("LeftButton")
    button:SetScript("OnDragStart", function() this:StartMoving() this:SetScript("OnUpdate", function() local mx, my = GetCursorPosition() local cx, cy = Minimap:GetCenter() local scale = Minimap:GetEffectiveScale() local angle = math.atan2((my / scale) - cy, (mx / scale) - cx) SimpleDeny_States.MinimapAngle = angle UpdatePosition() end) end)
    button:SetScript("OnDragStop", function() this:StopMovingOrSizing() this:SetScript("OnUpdate", nil) end) button:SetScript("OnClick", function() ToggleMainFrame() end)
    button:SetScript("OnEnter", function() GameTooltip:SetOwner(this, "ANCHOR_LEFT") GameTooltip:ClearLines() GameTooltip:AddLine("Simple Deny Manager", 1.0, 1.0, 1.0) GameTooltip:AddLine("Left-click to open/close menu.", 1.0, 0.82, 0.0) GameTooltip:AddLine("Left-click and drag to move this button.", 1.0, 0.82, 0.0) GameTooltip:Show() end)
    button:SetScript("OnLeave", function() GameTooltip:Hide() end) UpdatePosition()
end
EVENT_FRAME:SetScript("OnEvent", function()
    local current_event, addon_name, channel_type, packet_sender = event, arg1, arg3, arg4
    if current_event == "ADDON_LOADED" and addon_name == "SimpleDenyManager" then
        if not SimpleDeny_States then SimpleDeny_States = { MinimapAngle = 0 } elseif not SimpleDeny_States.MinimapAngle then SimpleDeny_States.MinimapAngle = 0 end
        CreateClassButtons() CreateMinimapButton() MainFrame:SetHeight(500) DEFAULT_CHAT_FRAME:AddMessage("|cff00ff00SimpleDenyManager loaded! Type /sdm or click the Minimap Gear to open.|r") return
    end
    if current_event == "CHAT_MSG_ADDON" then
        if addon_name ~= "nexus" and not string.find(addon_name, "%[nexus%]") then return end
        if channel_type ~= "UNKNOWN" or packet_sender ~= UnitName("player") then return end
        if string.find(addon_name, "GRINFO:SELF:FULL") then
            local serverResponse = string.sub(addon_name, string.find(addon_name, "%]") + 2)
            if serverResponse == "GRINFO:SELF:FULL" then DEFAULT_CHAT_FRAME:AddMessage("|cffff0000SDM: No active companions found.|r") return end
            local companionInfo = string.sub(serverResponse, string.find(serverResponse, " ") + 1) local loopStart = 1
            while true do
                local nextSpace = string.find(companionInfo, " ", loopStart) local block = nil
                if nextSpace then block = string.sub(companionInfo, loopStart, nextSpace - 1) else block = string.sub(companionInfo, loopStart) end
                if not block or block == "" then break end
                local raw_data, pStart = {}, 1
                while true do
                    local nextColon = string.find(block, ":", pStart) local dataPart = nil
                    if nextColon then dataPart = string.sub(block, pStart, nextColon - 1) else dataPart = string.sub(block, pStart) end
                    table.insert(raw_data, dataPart) if not nextColon then break end pStart = nextColon + 1
                end
                
                -- HIER SIND DIE KORREKTEN INDIZES AUS DEINEM SCREENSHOT:
                local botName = raw_data[1]
                local botClass = raw_data[3]
                
                if botClass and type(botClass) == "string" and botClass ~= "" then
                    local upperClass = string.upper(botClass) if LocalizedClasses[upperClass] then botClass = LocalizedClasses[upperClass] end
                end
                if botName and type(botName) == "string" and botName ~= "" then
                    if isGlobalResetActive or (botClass == selectedClass) then
                        if isDeactivateAllActive then
                            local spells = ClassSpells[selectedClass]
                            if spells then
                                local textBuffer = "deny add "
                                for _, spellName in ipairs(spells) do
                                    if string.len(textBuffer .. spellName .. ",") > 240 then
                                        if string.sub(textBuffer, -1) == "," then textBuffer = string.sub(textBuffer, 1, -2) end
                                        SendChatMessage(textBuffer, "WHISPER", nil, botName) textBuffer = "deny add "
                                    end
                                    textBuffer = textBuffer .. spellName .. ","
                                end
                                if textBuffer ~= "deny add " then
                                    if string.sub(textBuffer, -1) == "," then textBuffer = string.sub(textBuffer, 1, -2) end
                                    SendChatMessage(textBuffer, "WHISPER", nil, botName)
                                end
                            end
                        else
                            local message = "deny " .. pendingAction .. " " .. pendingSpell SendChatMessage(message, "WHISPER", nil, botName)
                        end
                    end
                end
                if not nextSpace then break end loopStart = nextSpace + 1
            end
        end
    end
end)

SLASH_SIMPLEDENY1 = "/sdm"
SlashCmdList["SIMPLEDENY"] = function() ToggleMainFrame() end
